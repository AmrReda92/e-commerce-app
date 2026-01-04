import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/core/models/app_text_styles.dart';
import 'package:commerce_app/features/home/model/info_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryItem extends StatelessWidget {
  final InfoCategoryModel categoryModelInfoItem;
  final bool isSelected;
  final void Function()? onTap;
  const CustomCategoryItem({super.key, required this.categoryModelInfoItem, required this.isSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: isSelected? AppColors.container1Background:AppColors.categoryBackground, // AppColors.categoryBackground ,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  categoryModelInfoItem.icon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(categoryModelInfoItem.title,style:isSelected?  AppTextStyles.fontMedium16:AppTextStyles.fontMedium14),
          ],
        ),
      ),
    );
  }
}
