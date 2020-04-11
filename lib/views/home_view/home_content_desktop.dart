//system
import 'package:flutter/material.dart';
import 'package:zipi/widgets/call_to_action/called_to_action.dart';
//developer
import 'package:zipi/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Sign Up Now'),
          ),
        ),
      ],
    );
  }
}
