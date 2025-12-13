import 'package:commerce_app/features/home/model/info_category_model.dart';
import 'package:commerce_app/features/home/model/info_container_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/models/app_colors.dart';
import '../../../core/models/app_text_styles.dart';

class CustomContainerListView extends StatelessWidget {

  const CustomContainerListView({super.key, });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: infoContainerModel.length,
      itemBuilder: (context,index){
        return Padding(
          padding:  EdgeInsets.only(right: 19.w),
          child: Container(
            width: 285.w,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.r),
                color: infoContainerModel[index].bigBackgroundColor
            ),child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(infoContainerModel[index].title,maxLines:2 ,overflow: TextOverflow.ellipsis, style: AppTextStyles.font16,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.65.r),
                    color: infoContainerModel[index].smallBackgroundColor,
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
