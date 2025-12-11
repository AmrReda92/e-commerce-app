import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/features/home/model/info_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCategoryListView extends StatefulWidget {
  const CustomCategoryListView({super.key});

  static List<InfoCategoryModel> categoryModel = [
    InfoCategoryModel(
        icon: "assets/icons/watch_icon.svg",
    ),
    InfoCategoryModel(
        icon: "assets/icons/cloth_icon.svg",
    ),
    InfoCategoryModel(
        icon: "assets/icons/shopping_icon.svg",
    ),
    InfoCategoryModel(
        icon: "assets/icons/shoes_icon.svg",
    ),
    InfoCategoryModel(
        icon: "assets/icons/glasses_icon.svg",
    ),
  ];

  @override
  State<CustomCategoryListView> createState() => _CustomCategoryListViewState();
}

class _CustomCategoryListViewState extends State<CustomCategoryListView> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: CustomCategoryListView.categoryModel.length,
        itemBuilder: (context,index){
        final selected = index == currentIndex ;
           return Padding(
             padding:  EdgeInsets.only(right: 19.w),
             child: GestureDetector(
               onTap: (){
                 setState(() {
                   currentIndex = index;
                 });
               },
               child: Container(
                 width: 64.w,
                 decoration: BoxDecoration(
                   color : selected ? AppColors.container1Background : AppColors.categoryBackground ,
                   shape: selected? BoxShape.circle : BoxShape.rectangle
                 ),child: Center(child: SvgPicture.asset(CustomCategoryListView.categoryModel[index].icon)
               ),
               ),
             ),
           );
        }
    );
  }
}
