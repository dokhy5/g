import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:g/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:g/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/presonalization/screens/address/address.dart';
import 'package:g/features/presonalization/screens/profile/profile.dart';
import 'package:g/features/shop/screens/cart/cart.dart';
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
    return Directionality(
      textDirection: TextDirection.rtl, // تحويل الاتجاه إلى اليمين
      child: SingleChildScrollView(
        child: Column(
          children: [
            GPrimaryHeaderContainer(
              child: Column(
                children: [
                  GAppbar(
                    title: Text(
                      'الحساب',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: GColors.white),
                    ),
                  ),
                  GUserProfileTile(onPressed: () => Get.to(() => ProfileScreen())),
                  SizedBox(height: GSizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(GSizes.defaultSpace),
              child: Column(
                children: [
                  GSectionHeading(
                    title: 'إعدادات الحساب',
                    showActionButton: false,
                  ),
                  SizedBox(height: GSizes.spaceBtwItems),
                  GSettingsMenuTile(
                    title: 'عنواني',
                    subtitle: 'تحديد عنوان التوصيل الخاص بك',
                    icon: Iconsax.safe_home,
                    onTap: () => Get.to(() => AddressScreen()),
                  ),
                  GSettingsMenuTile(
                    title: 'عربة التسوق',
                    subtitle: 'إضافة أو إزالة المنتجات وإتمام الدفع',
                    icon: Iconsax.shopping_cart,
                    onTap: () => Get.to(() => CartScreen()),
                  ),
                  GSettingsMenuTile(
                    title: 'طلباتي',
                    subtitle: 'الطلبات الجارية والمكتملة',
                    icon: Iconsax.bag_tick,
                  ),
                  GSettingsMenuTile(
                    title: 'الحساب البنكي',
                    subtitle: 'سحب الرصيد إلى الحساب البنكي المسجل',
                    icon: Iconsax.bank,
                  ),
                  GSettingsMenuTile(
                    title: 'كوبوناتي',
                    subtitle: 'قائمة بجميع القسائم المخفضة',
                    icon: Iconsax.discount_shape,
                  ),
                  GSettingsMenuTile(
                    title: 'الإشعارات',
                    subtitle: 'تعيين إشعارات التنبيهات المختلفة',
                    icon: Iconsax.notification,
                  ),
                  GSettingsMenuTile(
                    title: 'خصوصية الحساب',
                    subtitle: 'إدارة استخدام البيانات والحسابات المتصلة',
                    icon: Iconsax.security_card,
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),
                  GSectionHeading(title: 'إعدادات التطبيق', showActionButton: false),
                  SizedBox(height: GSizes.spaceBtwItems),
                  GSettingsMenuTile(
                    title: 'تحميل البيانات',
                    subtitle: 'رفع البيانات إلى سحابة Firebase',
                    icon: Iconsax.document_upload,
                  ),
                  GSettingsMenuTile(
                    title: 'الموقع الجغرافي',
                    subtitle: 'تقديم اقتراحات حسب الموقع',
                    icon: Iconsax.location,
                    trailing: Switch(value: false, onChanged: ((value) {})),
                  ),
                  GSettingsMenuTile(
                    title: 'الوضع الآمن',
                    subtitle: 'نتائج البحث آمنة لجميع الأعمار',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: ((value) {})),
                  ),
                  GSettingsMenuTile(
                    title: 'جودة الصور',
                    subtitle: 'تحديد جودة الصور المعروضة',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: ((value) {})),
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: dark ? GColors.white : GColors.black),
                      ),
                      onPressed: () {},
                      child: Text(
                        GText.logout,
                        style: TextStyle(color: dark ? GColors.white : GColors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: GSizes.spaceBtwSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
