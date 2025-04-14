import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/common/widgets/appbar/topbar.dart';
import 'package:g/common/widgets/custom_shapes/container/search_container.dart';
import 'package:g/common/widgets/loyouts/grid_loyout.dart';
import 'package:g/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:g/common/widgets/brands/brand_card.dart';
import 'package:g/common/widgets/text/section_heading.dart';
import 'package:g/features/shop/all_brands/all_brands.dart';
import 'package:g/features/shop/screens/store/widgets/category_tap.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // تعيين الاتجاه من اليمين إلى اليسار
      child: DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: GAppbar(
            title: Text(
              'المتجر',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [GCartCounterIcon(onPressed: () {})],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(GSizes.defaultSpace),
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(height: GSizes.spaceBtwItems),
                          const GSearchContainer(
                            text: 'ابحث عن المنتجات',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: GSizes.spaceBtwSections),
                          GSectionHeading(
                            title: 'العلامات التجارية المميزة',
                            showActionButton: true,
                            onPressed: () => Get.to(() => AllBrandsScreen()),
                          ),
                          const SizedBox(height: GSizes.spaceBtwItems / 1.5),
                          Directionality(
                                  textDirection: TextDirection.ltr, 


                            child: GGridLoyout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) =>
                                  GBrandCard(showBorder: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50),
                    child: GTopbar(
                      tabs: const [
                        Tab(child: Text('مساحيق')),
                        Tab(child: Text('صابون')),
                        Tab(child: Text('شامبو')),
                        Tab(child: Text('شاور')),
                        Tab(child: Text('كريمات')),
                        Tab(child: Text('زيوت')),
                        Tab(child: Text('مناديل')),
                        Tab(child: Text('مزيل عرق')),
                        Tab(child: Text('أخرى')),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: List.generate(9, (_) => GCategoryTap()),
            ),
          ),
        ),
      ),
    );
  }
}
