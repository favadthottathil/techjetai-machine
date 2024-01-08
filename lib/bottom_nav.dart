import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:techjetai/controller/nav_menu_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavMenuController>(builder: (context, navMenuController, _) {
      return Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: navMenuController.index,
          onDestinationSelected: (index) => navMenuController.setindex = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.direct5), label: 'Discover'),
            NavigationDestination(icon: Icon(Icons.supervised_user_circle_sharp), label: 'Profile'),
          ],
        ),
        body: navMenuController.screen[navMenuController.index],
      );
    });
  }
}
