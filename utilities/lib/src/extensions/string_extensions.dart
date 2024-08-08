part of utilities;

extension PrepareForEllipsis on String {
  String get toElliptical => replaceAll('', '\u{200B}');
}