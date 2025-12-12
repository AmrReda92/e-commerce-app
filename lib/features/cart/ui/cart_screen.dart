import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/core/models/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/cart_list_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 125.w,),
                  Text("My cart",style: AppTextStyles.font20,)
                ],
              ),
              SizedBox(height: 42.h,),
              Expanded(child: CartListView())

            ],
          ),
        ),
      ),
    );
  }
}
