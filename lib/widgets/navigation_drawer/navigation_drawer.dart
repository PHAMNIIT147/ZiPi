import 'package:flutter/material.dart';
import 'package:zipi/constant/app_colors.dart';
import 'package:zipi/routes/route_names.dart';
import 'package:zipi/widgets/navbar_item/navbar_item.dart';
import 'package:zipi/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: drawnerColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem(
            'Home',
            HomeRoute,
            icon: Icons.home,
          ),
          NavBarItem(
            'Products',
            ProductRoute,
            icon: Icons.apps,
          ),
          NavBarItem(
            'About',
            AboutRoute,
            icon: Icons.help,
          )
        ],
      ),
    );
  }
}
