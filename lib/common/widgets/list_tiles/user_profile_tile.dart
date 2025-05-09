import 'package:flutter/material.dart';
import 'package:g/common/widgets/images/circular_image.dart';
import 'package:g/features/presonalization/controllers/user_controller.dart';
import 'package:g/utils/constants/colors.dart';
import 'package:g/utils/constants/image_strings.dart';
import 'package:g/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GUserProfileTile extends StatelessWidget {
  const GUserProfileTile({
    super.key, this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final controller= UserController.instance;
    return ListTile(
      leading: GCircularImage(
        image: GImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: GColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: GColors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: IconButton(
        icon: const Icon(Iconsax.edit, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }
}
