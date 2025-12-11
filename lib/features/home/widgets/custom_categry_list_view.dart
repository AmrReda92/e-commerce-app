import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/features/home/model/info_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  static List<InfoCategoryModel> categoryModel = [
    InfoCategoryModel(
        icon: "assets/icons/watch_icon.svg",
        backGround: AppColors.container1Background
    ),
    InfoCategoryModel(
        icon: "assets/icons/cloth_icon.svg",
        backGround: AppColors.container1Background
    ),
    InfoCategoryModel(
        icon: "assets/icons/shopping_icon.svg",
        backGround: AppColors.container1Background
    ),
    InfoCategoryModel(
        icon: "assets/icons/shoes_icon.svg",
        backGround: AppColors.container1Background
    ),
    InfoCategoryModel(
        icon: "assets/icons/glasses_icon.svg",
        backGround: AppColors.container1Background
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoryModel.length,
        itemBuilder: (context,index){
           return Padding(
             padding:  EdgeInsets.only(right: 19.w),
             child: Container(
               width: 64.w,
               decoration: BoxDecoration(
                 color : categoryModel[index].backGround,
                 shape: index==0? BoxShape.circle : BoxShape.rectangle
               ),child: Center(child: SvgPicture.asset(categoryModel[index].icon)
             ),
             ),
           );
        }
    );
  }
}
