import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/models/app_colors.dart';
import '../../../core/models/app_images.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 53.h,
      decoration: BoxDecoration(
          color: AppColors.searchBackground,
          borderRadius: BorderRadius.circular(28.r)
      ),child: Row(
      children: [
        SizedBox(
            height: 48.h,
            width: 48.w,
            child: Center(child: SvgPicture.asset(AppImages.listIcon))),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none
            ),
          ),
        ),
        SizedBox(
          height: 48.h,
          width: 48.w,
          child:Center(child: SvgPicture.asset(AppImages.searchIcon)) ,
        )

      ],

    ),
    );
  }
}
