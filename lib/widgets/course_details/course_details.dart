import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment;
      double titleSize;
      double descriptionSize;
      if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
        textAlignment = TextAlign.left;
      } else {
        textAlignment = TextAlign.center;
      }
      if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
        titleSize = 30;
      } else {
        titleSize = 40;
      }
      if(sizingInformation.deviceScreenType == DeviceScreenType.Mobile){
        descriptionSize = 16;
      }
      else{
        descriptionSize = 21;
      }
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ZiPi Internet Of Things',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: titleSize,
                  height: 1.9,
                  color: Colors.white,
                  ),
                textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'This is the project of developing multi-platform Internet of Things connection management application to improve the experience performance, good solutions for smart cities, smart homes, smart products, etc.',
              style: TextStyle(fontSize: descriptionSize, height: 1.7, color: Colors.white),
            ),
          ],
        ),
      );
    });
  }
}
