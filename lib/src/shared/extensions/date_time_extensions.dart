import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  int get secondsSinceEpoch => (millisecondsSinceEpoch / 1000).round();

  String toKKMM() => DateFormat('kk:mm', 'ru').format(this);
  String toDDMMyykkmm() => DateFormat('dd.MM.yy kk:mm', 'ru').format(this);
  String toDDMMyyyykkmm() => DateFormat('dd.MM.yyyy kk:mm', 'ru').format(this);
  String toDDMMMMYY() => DateFormat('dd MMMM yyyy', 'ru').format(this);
  Duration toDuration() => Duration(seconds: secondsSinceEpoch);
}
