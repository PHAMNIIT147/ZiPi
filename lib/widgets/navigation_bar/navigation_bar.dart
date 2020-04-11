//system
import 'package:flutter/material.dart';
//package
import 'package:responsive_builder/responsive_builder.dart';
//developer
import 'package:zipi/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:zipi/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
