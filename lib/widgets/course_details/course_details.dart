import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zipi/styles/styles_text.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          (sizingInformation.deviceScreenType == DeviceScreenType.Desktop)
              ? TextAlign.left
              : TextAlign.center;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ZiPi Internet Of Things',
              style: titleTextStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'This is the project of developing multi-platform Internet of Things connection management application to improve the experience performance, good solutions for smart cities, smart homes, smart products, etc.',
              style: descriptionStyle(sizingInformation.deviceScreenType),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
