library reactive_value;

import 'dart:async';

import 'package:collection/collection.dart';

typedef IsEquals<T> = bool Function(T a, T b);

/// ReactiveValue is a read-only interface that can be used to hide a mutable instance.
/// Usually you want to use a MutableReactiveValue object inside your class and present it to
/// the outside world as an immutable ReactiveValue.
abstract class ReactiveValue<T> {
  T get currentValue;

  Stream<T> get value;

  Stream<T> get updates;

  bool get hasListeners;

  bool get hasValue;
}

/// MutableReactiveValue is an "augmented" Stream, somewhat akin the BehaviorSubject
/// class from the RxDart. It provides a reactive Stream that delivers new values
/// in a rective way, but also caches the most recent value and sends this value
/// to a listener immidiately after it's been subscribed to, so one Stream can
/// be used both to get the current value and all the next values.
/// If [reactiveValue] can't be given a value at initialization time, use the
/// [late] constructor, that way the first value sent to subscribers will be
/// the value set by the first call of the [update] method.
///
/// To hide mutable functionality of this class (e.g. to prevent it's value from
/// being changed by some outside object) cast to the ReactiveValue read-only
/// abstract class can be done:
/// ```dart
/// final _userSession = MutableReactiveValue<Session>.late();
/// ReactiveValue<Session> get userSession => _userSession;
/// ```
///
/// Also, only a [Stream] can be used to send data outwards, like so:
/// ```dart
/// final _userSession = MutableReactiveValue<Session>.late();
/// Stream<Session> get userSession => _userSession.value;
/// ```
class MutableReactiveValue<T> implements ReactiveValue<T> {
  late T _currentValue;
  late final StreamController<T> _streamController;
  bool _hasValue = true;

  MutableReactiveValue(T initialValue, [void Function()? onListen, void Function()? onCancel])
      : _currentValue = initialValue,
        _streamController = StreamController<T>.broadcast(
          onCancel: onCancel,
          onListen: onListen,
        );

  MutableReactiveValue.late([void Function()? onListen, void Function()? onCancel])
      : _hasValue = false,
        _streamController = StreamController<T>.broadcast(
          onCancel: onCancel,
          onListen: onListen,
        );

  /// Get the most recent value synchronously
  /// Throws a [ReactiveValueNoValueException] if a [late] reactiveValue still
  /// has not been given a value of the instance was [close]d.
  @override
  T get currentValue {
    if (!_hasValue) {
      throw ReactiveValueNoValueException();
    }

    return _currentValue;
  }

  /// Creates a stream that always returns actual value.
  /// When listened to, the most recent value is sent to the stream right away.
  /// Throws a [ReactiveValueNoValueException] if this instance was [close]d.
  @override
  Stream<T> get value async* {
    if (_streamController.isClosed) {
      throw ReactiveValueNoValueException();
    }
    if (_hasValue) {
      yield _currentValue;
    }
    yield* _streamController.stream;
  }

  @override
  Stream<T> get updates {
    if (_streamController.isClosed) {
      throw ReactiveValueNoValueException();
    }

    return _streamController.stream;
  }

  @override
  bool get hasListeners => _streamController.hasListener;

  /// Updates currently stored value.
  /// All subscribers get this value immediately.
  void update(T newValue, {bool withUpdate = true}) {
    _hasValue = true;
    _currentValue = newValue;

    if (withUpdate) {
      _streamController.sink.add(newValue);
    }
  }

  /// Updates currently stored value.
  /// If value not equal current it will be updated
  /// All subscribers get this value immediately.
  /// IsEquals for checking complex types
  void updateIfChanged(
    T newValue, {
    IsEquals<T>? isEquals,
    bool isDeepEquality = false,
  }) {
    updateIfChangedAndGetResult(
      newValue,
      isEquals: isEquals,
      isDeepEquality: isDeepEquality,
    );
  }

  /// Updates currently stored value.
  /// If value not equal current it will be updated
  /// All subscribers get this value immediately.
  /// IsEquals for checking complex types
  /// returns true if updated
  bool updateIfChangedAndGetResult(
    T newValue, {
    IsEquals<T>? isEquals,
    bool isDeepEquality = false,
  }) {
    if (!_hasValue) {
      update(newValue);

      return true;
    }

    if (isEquals != null) {
      if (isEquals(_currentValue, newValue)) {
        return false;
      }
    } else if (isDeepEquality && const DeepCollectionEquality().equals(_currentValue, newValue)) {
      return false;
    } else if (_currentValue == newValue) {
      return false;
    }

    update(newValue);

    return true;
  }

  /// Closes underlying [streamController] in case some manual cleaning should be done.
  /// Closing a reusableValue renders if unusible.
  void close() {
    _streamController.close();
    _hasValue = false;
  }

  @override
  bool get hasValue => _hasValue;
}

/// A [ReactiveValue] which emits only the initial value.
/// Useful in dummy/empty classes because does not need to be closed.
class UnmutableReactiveValue<T> implements ReactiveValue<T> {
  @override
  final T currentValue;

  const UnmutableReactiveValue(this.currentValue);

  @override
  bool get hasListeners => false;

  @override
  bool get hasValue => true;

  @override
  Stream<T> get updates => const Stream.empty();

  @override
  Stream<T> get value => Stream.value(currentValue);
}

class ReactiveValueNoValueException implements Exception {}
