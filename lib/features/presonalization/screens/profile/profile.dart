import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/presonalization/screens/profile/widgets/profile_menu.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:g/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Directionality(
      textDirection: TextDirection.rtl, // تغيير الاتجاه إلى اليمين
      child: Scaffold(
        appBar: GAppbar(title: Text('الملف الشخصي'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      GCircularImage(image: GImages.user, width: 80, height: 80),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'تغيير صورة الملف الشخصي',
                          style: TextStyle(color: dark ? GColors.white : GColors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: GSizes.spaceBtwItems / 2),
                const Divider(),
                const SizedBox(height: GSizes.spaceBtwItems),
                const GSectionHeading(title: 'معلومات الملف الشخصي', showActionButton: false),
                const SizedBox(height: GSizes.spaceBtwItems),
                GProfileMenu(
                  title: 'الاسم',
                  value: 'محمد أيمن',
                  onPressed: () {},
                ),
                GProfileMenu(
                  title: 'اسم المستخدم',
                  value: 'M.dokhy5',
                  onPressed: () {},
                ),
                const GSectionHeading(title: 'المعلومات الشخصية', showActionButton: false),
                const SizedBox(height: GSizes.spaceBtwItems),
                const Divider(),
                const SizedBox(height: GSizes.spaceBtwItems),
                GProfileMenu(
                  title: 'معرف المستخدم',
                  value: '455677',
                  icon: Iconsax.copy,
                  onPressed: () {},
                ),
                GProfileMenu(
                  title: 'البريد الإلكتروني',
                  value: 'mohamed.aymen@gmail.com',
                  onPressed: () {},
                ),
                GProfileMenu(
                  title: 'رقم الهاتف',
                  value: '+0123456789',
                  onPressed: () {},
                ),
                GProfileMenu(
                  title: 'الجنس',
                  value: 'ذكر',
                  onPressed: () {},
                ),
                GProfileMenu(
                  title: 'تاريخ الميلاد',
                  value: '19/12/2000',
                  onPressed: () {},
                ),
                const Divider(),
                const SizedBox(height: GSizes.spaceBtwItems),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'إغلاق الحساب',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
