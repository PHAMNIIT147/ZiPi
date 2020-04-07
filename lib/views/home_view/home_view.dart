import 'package:flutter/material.dart';
import 'package:zipi/widgets/call_to_action/called_to_action.dart';
import 'package:zipi/widgets/course_details/course_details.dart';

import 'package:zipi/widgets/navigation_bar/navigation_bar.dart';
import 'package:zipi/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 33, 47,1),
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Sign Up Now'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
