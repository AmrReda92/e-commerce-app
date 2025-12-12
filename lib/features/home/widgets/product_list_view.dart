import 'package:commerce_app/core/models/app_images.dart';
import 'package:commerce_app/features/home/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/models/app_colors.dart';
import '../../../core/models/app_text_styles.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});
  
  static List <ProductModel> productModel = [
    ProductModel(
        image: AppImages.watchOne,
        price: "45000",
    ),
    ProductModel(
      image: AppImages.watchTwo,
      price: "55000",
    ),
    ProductModel(
      image: AppImages.watchThree,
      price: "25000",
    ),
    ProductModel(
      image: AppImages.watchFour,
      price: "20000",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
           mainAxisSpacing: 26.w,
           crossAxisSpacing: 20.h,
        childAspectRatio: .85,
      ) ,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics() ,
      scrollDirection: Axis.vertical,
      itemCount: productModel.length,
        itemBuilder: (context,index){
        return Container(
          width: 174.w,
          height: 204.h,
          decoration: BoxDecoration(
              color: AppColors.productBackground,
              borderRadius: BorderRadius.circular(15.r)
          ),
          child: Stack(
            children: [
              Positioned(
                left:13.w,
                top: 5.h,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.13.r)
                  ),child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 6.h),
                  child: Text("50% OFF",style: AppTextStyles.font10SemiBold,),
                ),
                ),
              ),

              SizedBox(height: 5.61.h,),
              Positioned(
                  left: 28.w,
                  top: 34.h,
                  child: Image.asset(productModel[index].image,width: 106.w,height: 110.h,)),
              SizedBox(height: 30.h,),
              Positioned(
                  left: 37.w,
                  top: 170.h,
                  child: Text(productModel[index].price,style: AppTextStyles.fontExtraBold12,)),
              SizedBox(height: 19.h,),

            ],
          ),
        );
        }
    );
  }
}
