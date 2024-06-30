// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/personalization/screens/settings/settings.dart';
import 'features/personalization/screens/transactions/swap.dart';
import 'features/pages/screens/home/home.dart';
import 'features/pages/screens/explore/crypto.dart';
import 'features/pages/screens/explore/trade.dart';
import 'utils/constants/colors.dart';
import 'utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home,), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.bitcoin_card), label: 'Crypto'),
            NavigationDestination(icon: Icon(Iconsax.arrow_swap_horizontal), label: 'Swap'),
            NavigationDestination(icon: Icon(Iconsax.trade), label: 'Trade'),
            NavigationDestination(icon: Icon(Iconsax.setting), label: 'Settings'),
          ]
          ),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens =[
    Home(),
    Crypto(),
    Swap(),
    Trade(),
    SettingsScreen(),
  ];
}