import 'package:flutter/material.dart';
import 'package:g/features/presonalization/screens/settings/settings.dart';
import 'package:g/features/shop/screens/home/home.dart';
import 'package:g/features/shop/screens/store/store.dart';
import 'package:g/features/shop/screens/wishlist/wishlist.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Directionality(
      textDirection: TextDirection.rtl, // جعل الاتجاه من اليمين إلى اليسار
      child: Scaffold(
        body: Obx(() => controller.screens[controller.selectedIndex.value]),

        bottomNavigationBar: Obx(() => NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: dark ? Colors.black : Colors.white,
          indicatorColor: dark ? Colors.white.withOpacity(.1) : Colors.black.withOpacity(.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (int index) => controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'الرئيسية'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'المتجر'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'المفضلة'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'الملف الشخصي'),
          ],
        )),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final List<Widget> screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
}
