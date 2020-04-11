import 'package:flutter/material.dart';
import 'package:zipi/routes/route_names.dart';
import 'package:zipi/widgets/navbar_item/navbar_item.dart';
import 'package:zipi/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home',HomeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Product',ProductRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About',AboutRoute),
            ],
          ),
        ],
      ),
    );
  }
}
