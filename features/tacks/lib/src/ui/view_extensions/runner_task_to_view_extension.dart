import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

extension RunnerTaskSatusToViewExtension on RunnerTaskStatus {
  String getContent(BuildContext context) {

    return FlutterI18n.translate(context, 'tacksScreen.runnerStatus.$name');
  }
}