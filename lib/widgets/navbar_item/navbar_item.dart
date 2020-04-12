import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:zipi/datamodels/navbar_item_models.dart';
import 'package:zipi/locator.dart';
import 'package:zipi/services/navigation_service.dart';
import 'package:zipi/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:zipi/widgets/navbar_item/navbar_item_tablet_desktop.dart';
import 'package:zipi/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
        title: title, navigationPath: navigationPath, iconData: icon);

    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ).showCursorOnHover.moveUpHover,
      ),
    );
  }
}
