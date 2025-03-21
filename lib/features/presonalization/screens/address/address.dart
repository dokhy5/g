import 'package:flutter/material.dart';
import 'package:g/common/widgets/appbar/appbar.dart';
import 'package:g/features/presonalization/screens/address/add_new_address.dart';
import 'package:g/features/presonalization/screens/address/single_address.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:get/get.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddress()),
        backgroundColor: GColors.primary,
        foregroundColor: GColors.white,
        child: const Icon(Icons.add),
      ),

      appBar: GAppbar(
        title: Text(
          'العناوين',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              GSingleAddress(selectedAddress: true),
              GSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
