//system 
import 'package:flutter/material.dart';
//developer
import 'package:zipi/widgets/call_to_action/called_to_action.dart';
import 'package:zipi/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction('Sign Up Now'),
      ],
    );
  }
}