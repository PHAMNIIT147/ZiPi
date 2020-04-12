//system
import 'package:flutter/material.dart';
//package
import 'package:responsive_builder/responsive_builder.dart';
//developer
import 'package:zipi/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:zipi/widgets/call_to_action/called_to_action_tablet_desktop.dart';

import 'package:zipi/extensions/hover_extensions.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    ).showCursorOnHover.moveUpHover;
  }
}
