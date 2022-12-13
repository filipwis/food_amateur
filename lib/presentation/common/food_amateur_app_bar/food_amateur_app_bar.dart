import 'package:flutter/material.dart';

import '../../style/app_dimens.dart';
import '../../style/app_illustration.dart';
import '../../style/app_theme.dart';

class FoodAmateurAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FoodAmateurAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: context.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: AppDimens.m,
                left: AppDimens.m,
              ),
              child: Image.asset(
                AppIllustration.logo,
                width: AppDimens.xxxxc,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppDimens.xxxxc);
}
