import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:g/features/shop/screen/home/home.dart';
import 'package:g/features/shop/screen/store/store.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      bottomNavigationBar: Obx(() => NavigationBar(
        height: 60,
        elevation: 0,
        backgroundColor: dark ? Colors.black : Colors.white,
        indicatorColor: dark ? Colors.white.withOpacity(.1) : Colors.black.withOpacity(.1),
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (int index) => controller.selectedIndex.value = index,
        destinations: [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      )),
    );
  }
}
          
class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.red),
    Container(color: Colors.green),
  ];
}
