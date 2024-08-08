part of utilities;

class ScreenUtil {
  static bool isPortraitMode(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  static Future<void> enablePortraitOrientationOnly() async {
    await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
  }

  static Future<void> enableAllOrientations() async {
    await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );
  }
}
