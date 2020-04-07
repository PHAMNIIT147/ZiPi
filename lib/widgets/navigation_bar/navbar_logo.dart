import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Image.asset('assets/logos/logo.png'),
    );
  }
}