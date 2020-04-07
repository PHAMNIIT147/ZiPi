import 'package:flutter/material.dart';

import 'package:zipi/widgets/navigation_bar/navbar_logo.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBar('Home'),
              SizedBox(
                width: 60,
              ),
              _NavBar('About')
            ],
          )
        ],
      ),
    );
  }
}

class _NavBar extends StatelessWidget {
  final String title;
  const _NavBar(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
