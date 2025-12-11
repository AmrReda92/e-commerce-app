import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/core/models/app_images.dart';
import 'package:commerce_app/core/models/app_text_styles.dart';
import 'package:commerce_app/features/home/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:31.w),
                child: CustomSearchField() ,
              ),
              SizedBox(height: 13.h,),
              Align(
                alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 28.w),
                    child: Text("Let’s start shopping!",style: AppTextStyles.font12,),
                  )),
              SizedBox(height: 14.h,),

              
            ],
          ),
        ),
      ),

    );
  }
}
