import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sql_app/src/shared/extensions/date_time_extensions.dart';

class CountDownTimer {
  final ValueChanged<TimerEntity> timerTimeChanged;
  final Duration duration;
  final VoidCallback? onEnd;
  final bool autostart;

  CountDownTimer({
    required this.timerTimeChanged,
    required this.duration,
    this.onEnd,
    this.autostart = true,
  }) {
    if (autostart) {
      start();
    }
  }

  int get _nowTimeInSec => DateTime.now().secondsSinceEpoch;

  Timer? _periodicTimer;

  void start() {
    final durationInSec = duration.inSeconds;
    var currentTime = durationInSec;

    final startTimeInSec = _nowTimeInSec;
    final endTimeInSec = startTimeInSec + durationInSec;

    _periodicTimer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        if (!isEqualTime((_nowTimeInSec + currentTime), endTimeInSec)) {
          currentTime = endTimeInSec - _nowTimeInSec;
          if (currentTime <= 0) {
            onEnd?.call();
            cancel();

            return;
          }
        }

        _onTimerTimeChanged(currentTime);
        currentTime--;

        if (currentTime == 0) {
          onEnd?.call();
          cancel();
        }
      },
    );
  }

  bool isEqualTime(int firstValue, int secondValue) {
    final checkResult = secondValue - firstValue;

    if (checkResult == 0 || checkResult == 1 || checkResult == -1) {
      return true;
    }

    return false;
  }

  void _onTimerTimeChanged(int currentTimeInSec) {
    final min = currentTimeInSec ~/ 60;
    final sec = currentTimeInSec % 60;

    timerTimeChanged(TimerEntity(min, sec));
  }

  void cancel() {
    _periodicTimer?.cancel();
  }
}

class TimerEntity {
  final int min;
  final int sec;

  String get minString => min.toString();

  TimerEntity(this.min, this.sec);

  String asString() {
    return '${_format(min.toString())}:${_format(sec.toString())}';
  }

  String _format(String value) => value.toString().length == 1 ? '0$value' : value;
}
