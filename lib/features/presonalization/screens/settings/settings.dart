import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:g/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:g/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/presonalization/screens/profile/profile.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          GPrimaryHeaderContainer(
            child: Column(
              children: [
                GAppbar(
                  title: Text(
                    'Account',
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium!.apply(color: GColors.white),
                  ),
                ),
                GUserProfileTile(onPressed: ()=>Get.to(()=>ProfileScreen())),
                SizedBox(height: GSizes.spaceBtwSections),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                GSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                SizedBox(height: GSizes.spaceBtwItems),
                GSettingsMenuTile(
                  title: 'My Address',
                  subtitle: 'Set shopping delivery address',
                  icon: Iconsax.safe_home,
                ),
                GSettingsMenuTile(
                  title: 'My Cart',
                  subtitle: 'Add, remove products and move checkout',
                  icon: Iconsax.shopping_cart,
                ),
                GSettingsMenuTile(
                  title: 'My Orders',
                  subtitle: 'In-progress and completed orders',
                  icon: Iconsax.bag_tick,
                ),
                GSettingsMenuTile(
                  title: 'Bank Acount',
                  subtitle: 'Withdraw balance to registered bank account',
                  icon: Iconsax.bank,
                ),
                GSettingsMenuTile(
                  title: 'My Coupons',
                  subtitle: 'List of all discounted coupons',
                  icon: Iconsax.discount_shape,
                ),
                GSettingsMenuTile(
                  title: 'Netfications',
                  subtitle: 'Set any kind of notification message',
                  icon: Iconsax.notification,
                ),
                GSettingsMenuTile(
                  title: 'Account Privacy',
                  subtitle: 'Mange data usage and connected accounts',
                  icon: Iconsax.security_card,
                ),
                SizedBox(height: GSizes.spaceBtwSections),
                GSectionHeading(title: 'App Settings', showActionButton: false),
                SizedBox(height: GSizes.spaceBtwItems),
                GSettingsMenuTile(
                  title: 'Load Data',
                  subtitle: 'Upload  data to the your cloud firebase',
                  icon: Iconsax.document_upload,
                ),
                GSettingsMenuTile(
                  title: 'GeoLocation',
                  subtitle: 'set Recommendations based on location',
                  icon: Iconsax.location,
                  trailing: Switch(value: false, onChanged: ((value) {})),
                ),
                 GSettingsMenuTile(
                  title: 'Safe Mode',
                  subtitle: 'Search Results is Safe for all ages',
                  icon: Iconsax.security_user,
                  trailing: Switch(value: false, onChanged: ((value) {})),
                ),
                 GSettingsMenuTile(
                  title: 'HD Images Quality',
                  subtitle: 'Set image quality to be seen',
                  icon: Iconsax.image,
                  trailing: Switch(value: false, onChanged: ((value) {})),
                ),
                SizedBox(height: GSizes.spaceBtwSections),
                SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent, // No background color
                  side: BorderSide(color: dark ? GColors.white : GColors.black),
                ),
                onPressed: () {},
                child: Text(
                  GText.logout,
                  style: TextStyle(color: dark ? GColors.white : GColors.black),
                ),
              ),
            ),
            SizedBox(height: GSizes.spaceBtwSections*2.5),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
