import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/features/home/model/info_category_model.dart';
import 'package:commerce_app/features/home/widgets/custom_category_item.dart';
import 'package:flutter/material.dart';


class CustomCategoryListView extends StatelessWidget {
  final int selectedIndex;
  final void Function(int)? onTapItem;
  const CustomCategoryListView({super.key, required this.selectedIndex, this.onTapItem});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryModel.length,
          itemBuilder: (context,index){
            final InfoCategoryModel cat = categoryModel[index];
             return CustomCategoryItem(
               categoryModelInfoItem: cat,
               isSelected: selectedIndex==index,
               onTap: ()=>onTapItem!(index),
             );
          }
      ),
    );
  }
}
