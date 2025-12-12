import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/core/models/app_images.dart';
import 'package:commerce_app/core/models/app_text_styles.dart';
import 'package:commerce_app/features/cart/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  static List<CartModel> cartModel = [
    CartModel(
      image: "assets/images/watch_four.png",
      name: "watch",
      price: "45000",
      size: "size:20",
    ),
    CartModel(
      image: "assets/images/watch_onee.png",
      name: "cloth",
      price: "4200",
      size: "size:20",
    ),
    CartModel(
      image: "assets/images/watch_three.png",
      name: "airbods",
      price: "47000",
      size: "size:20",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: cartModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.only(bottom: 19.h),
          child: Container(
            height: 115.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColors.categoryBackground,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Container(
                    height: 87.h,
                    width: 110.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xffB0AB7B).withAlpha(64),
                    ),
                    child: Image.asset(cartModel[index].image, fit: BoxFit.cover),
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        cartModel[index].name,
                        style: AppTextStyles.fontMedium14,
                      ),
                      Text(
                        cartModel[index].price,
                        style: AppTextStyles.fontExtraBold12,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(cartModel[index].size, style: AppTextStyles.font12),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.container1Background,
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 8.h,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.add, size: 20),
                              SizedBox(width: 14.w),
                              Text("1", style: AppTextStyles.fontMedium14),
                              SizedBox(width: 14.w),
                              Icon(Icons.remove, size: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
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
