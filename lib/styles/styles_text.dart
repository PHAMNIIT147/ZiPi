import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';

TextStyle titleTextStyle(DeviceScreenType deviceScreenType){
  double titleSize = (deviceScreenType == DeviceScreenType.Mobile) ? 30 : 40;
  return TextStyle(fontSize: titleSize, fontWeight: FontWeight.w700, height: 0.9);
}

TextStyle descriptionStyle(DeviceScreenType deviceScreenType){
  double descriptionStyle = (deviceScreenType == DeviceScreenType.Mobile) ? 20 : 24;
  return TextStyle(fontSize: descriptionStyle, height: 1.7);
}
