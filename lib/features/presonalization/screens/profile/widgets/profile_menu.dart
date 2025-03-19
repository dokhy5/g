import 'package:flutter/material.dart';
import 'package:g/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class GProfileMenu extends StatelessWidget {
  const GProfileMenu({
    super.key,
    this.icon = Iconsax.arrow_left_2, 
    required this.title,
    required this.value,
    required this.onPressed,
  });

  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(flex: 3, child: Text(title, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right)),
            Expanded(flex: 5, child: Text(value, style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis)),
            Expanded(child: Icon(icon, size: 18)), // وضع الأيقونة على اليسار
          ],
        ),
      ),
    );
  }
}
