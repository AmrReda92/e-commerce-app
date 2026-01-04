import 'dart:ui';

import 'package:flutter_svg/svg.dart';

class InfoCategoryModel {
  final String icon ;
  final  String title;

  InfoCategoryModel({required this.title, required this.icon,});

}

 List<InfoCategoryModel> categoryModel = [
  InfoCategoryModel(
    icon: "assets/icons/watch_icon.svg",
    title: "watches"
  ),
  InfoCategoryModel(
    icon: "assets/icons/cloth_icon.svg",
      title: "clothes"

  ),
  InfoCategoryModel(
    icon: "assets/icons/shopping_icon.svg",
      title: "shopping"

  ),
  InfoCategoryModel(
    icon: "assets/icons/shoes_icon.svg",
      title: "shoes"

  ),
  InfoCategoryModel(
    icon:  "assets/icons/glasses_icon.svg",
      title: "glasses"

  ),
];
