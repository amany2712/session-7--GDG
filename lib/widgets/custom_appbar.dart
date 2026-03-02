import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:session7_gdg/constants/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDark;
  const CustomAppbar({super.key, this.isDark = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: isDark
          ? AppColors.primaryColor
          : AppColors.secondaryColor,
      title: SvgPicture.asset(
        'assets/svgs/open_fashion.svg',
        width: 78.08,
        color: isDark ? AppColors.secondaryColor : AppColors.primaryColor,
      ),
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.only(left: 16),
        padding: EdgeInsets.all(5),
        child: SvgPicture.asset(
          'assets/svgs/menu.svg',
          color: isDark ? AppColors.secondaryColor : AppColors.primaryColor,
        ),
      ),
      actions: [
        SvgPicture.asset(
          'assets/svgs/Search.svg',
          color: isDark ? AppColors.secondaryColor : AppColors.primaryColor,
        ),
        SizedBox(width: 20),
        SvgPicture.asset(
          'assets/svgs/shopping_bag.svg',
          color: isDark ? AppColors.secondaryColor : AppColors.primaryColor,
        ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
