import 'package:commerce_app/features/home/model/info_container_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/models/app_colors.dart';
import '../../../core/models/app_text_styles.dart';

class CustomContainerListView extends StatelessWidget {

  const CustomContainerListView({super.key, });

 static  List<InfoContainerModel> info = [
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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: info.length,
      itemBuilder: (context,index){
        return Padding(
          padding:  EdgeInsets.only(right: 19.w),
          child: Container(
            width: 285.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.r),
                color: info[index].bigBackgroundColor
            ),child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info[index].title,maxLines:2 ,overflow: TextOverflow.ellipsis, style: AppTextStyles.font16,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.65.r),
                    color: info[index].smallBackgroundColor,
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
                    child: Text("Get Now",style: AppTextStyles.font12bold,),
                  ),
                ),
              ],
            ),
          ),
          ),
        );
      },

    );
  }
}
