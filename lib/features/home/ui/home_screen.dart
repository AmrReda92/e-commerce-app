import 'package:commerce_app/core/models/app_text_styles.dart';
import 'package:commerce_app/features/home/widgets/custom_categry_list_view.dart';
import 'package:commerce_app/features/home/widgets/list_view_carouse.dart';
import 'package:commerce_app/features/home/widgets/custom_search_field.dart';
import 'package:commerce_app/features/home/widgets/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

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
              Padding(
                padding:  EdgeInsets.only(right: 0,left: 23),
                child: Column(
                  children: [
                    SizedBox(
                        height: 130.h,
                        child: ListViewCarouse()
                      ),
                    SizedBox(height: 24.h,),
                    Padding(
                      padding:  EdgeInsets.only(right: 23.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Top Categories",style: AppTextStyles.font20,),
                          Text("See All",style: AppTextStyles.fontMedium16,)
                        ],
                      ),
                    ),
                    SizedBox(height: 33.h,),
                    CustomCategoryListView(
                      selectedIndex : selectedIndex,
                      onTapItem: (index){
                        setState(() {
                          selectedIndex=index;
                        });
                      },
                    ),
                    SizedBox(height: 33.45.h,),
                    ProductListView()
                  ],
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
