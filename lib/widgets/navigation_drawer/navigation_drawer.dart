import 'package:flutter/material.dart';
import 'package:zipi/routes/route_names.dart';
import 'package:zipi/widgets/navigation_drawer/drawner_item.dart';
import 'package:zipi/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawnerItem('Home', Icons.home, HomeRoute),
          DrawnerItem('Product', Icons.work, ProductRoute),
          DrawnerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}
