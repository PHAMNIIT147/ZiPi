import 'package:flutter/material.dart';
import 'package:zipi/widgets/navbar_item/navbar_item.dart';

class DrawnerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawnerItem(this.title, this.icon, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 60.0),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          NavBarItem(title,navigationPath),
        ],
      ),
    );
  }
}
