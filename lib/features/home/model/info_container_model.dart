import 'package:flutter/animation.dart';

import '../../../core/models/app_colors.dart';

class InfoContainerModel{
  final String title ;
  final Color bigBackgroundColor ;
  final Color smallBackgroundColor ;

   InfoContainerModel({required this.title,required this.bigBackgroundColor,required this.smallBackgroundColor});
}


   List<InfoContainerModel> infoContainerModel = [
  InfoContainerModel(
    title: "20% OFF DURING THE RAMZAN",
    bigBackgroundColor: AppColors.container1Background,
    smallBackgroundColor: AppColors.getNow1Background,
  ),
  InfoContainerModel(
    title: "40% OFF BLACK FRIDAY",
    bigBackgroundColor: AppColors.container2Background,
    smallBackgroundColor: AppColors.getNow2Background,
  ),
  InfoContainerModel(
    title: "40% OFF CHRISTMAS",
    bigBackgroundColor: AppColors.container3Background,
    smallBackgroundColor: AppColors.getNow3Background,
  ),

];



  // if list comes from api or firebase
  /* factory InfoContainerModel.fromJson(Map<String, dynamic> json) {
    return InfoContainerModel(
      title: json['title'],
      bigBackgroundColor: Color(int.parse(json['bigBackgroundColor'])),
      smallBackgroundColor: Color(int.parse(json['smallBackgroundColor'])),
    );
  }
}

   */

