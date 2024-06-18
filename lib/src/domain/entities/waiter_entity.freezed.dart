// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waiter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaiterEntity _$WaiterEntityFromJson(Map<String, dynamic> json) {
  return _WaiterEntity.fromJson(json);
}

/// @nodoc
mixin _$WaiterEntity {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'hire_date')
  DateTime get hireDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'waiter_id')
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaiterEntityCopyWith<WaiterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaiterEntityCopyWith<$Res> {
  factory $WaiterEntityCopyWith(
          WaiterEntity value, $Res Function(WaiterEntity) then) =
      _$WaiterEntityCopyWithImpl<$Res, WaiterEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'hire_date') DateTime hireDate,
      @JsonKey(name: 'waiter_id') int? id});
}

/// @nodoc
class _$WaiterEntityCopyWithImpl<$Res, $Val extends WaiterEntity>
    implements $WaiterEntityCopyWith<$Res> {
  _$WaiterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? hireDate = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaiterEntityImplCopyWith<$Res>
    implements $WaiterEntityCopyWith<$Res> {
  factory _$$WaiterEntityImplCopyWith(
          _$WaiterEntityImpl value, $Res Function(_$WaiterEntityImpl) then) =
      __$$WaiterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'hire_date') DateTime hireDate,
      @JsonKey(name: 'waiter_id') int? id});
}

/// @nodoc
class __$$WaiterEntityImplCopyWithImpl<$Res>
    extends _$WaiterEntityCopyWithImpl<$Res, _$WaiterEntityImpl>
    implements _$$WaiterEntityImplCopyWith<$Res> {
  __$$WaiterEntityImplCopyWithImpl(
      _$WaiterEntityImpl _value, $Res Function(_$WaiterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = null,
    Object? hireDate = null,
    Object? id = freezed,
  }) {
    return _then(_$WaiterEntityImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      hireDate: null == hireDate
          ? _value.hireDate
          : hireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaiterEntityImpl implements _WaiterEntity {
  const _$WaiterEntityImpl(
      {@JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'hire_date') required this.hireDate,
      @JsonKey(name: 'waiter_id') this.id});

  factory _$WaiterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaiterEntityImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'hire_date')
  final DateTime hireDate;
  @override
  @JsonKey(name: 'waiter_id')
  final int? id;

  @override
  String toString() {
    return 'WaiterEntity(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, hireDate: $hireDate, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaiterEntityImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.hireDate, hireDate) ||
                other.hireDate == hireDate) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, phone, hireDate, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaiterEntityImplCopyWith<_$WaiterEntityImpl> get copyWith =>
      __$$WaiterEntityImplCopyWithImpl<_$WaiterEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaiterEntityImplToJson(
      this,
    );
  }
}

abstract class _WaiterEntity implements WaiterEntity {
  const factory _WaiterEntity(
      {@JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      @JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'phone') required final String phone,
      @JsonKey(name: 'hire_date') required final DateTime hireDate,
      @JsonKey(name: 'waiter_id') final int? id}) = _$WaiterEntityImpl;

  factory _WaiterEntity.fromJson(Map<String, dynamic> json) =
      _$WaiterEntityImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'hire_date')
  DateTime get hireDate;
  @override
  @JsonKey(name: 'waiter_id')
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$WaiterEntityImplCopyWith<_$WaiterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
