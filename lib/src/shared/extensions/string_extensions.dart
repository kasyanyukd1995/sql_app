extension StringExt on String {
  String get withRemovedSpaces => trim().replaceAll(' ', '');
}
