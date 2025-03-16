import 'package:flutter/material.dart';
import 'package:g/utils/constants/colors.dart';

class GSettingsMenuTile extends StatelessWidget {
  const GSettingsMenuTile({super.key, required this.title, required this.subtitle, required this.icon, this.trailing, this.onTap});
final String title;
final String subtitle;
final IconData icon;
final Widget? trailing;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(icon,size: 28,color: GColors.primary,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium),
      trailing:trailing ,
      onTap: onTap ,
    );
  }
}