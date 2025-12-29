import 'package:commerce_app/core/models/app_colors.dart';
import 'package:commerce_app/features/cart/ui/cart_screen.dart';
import 'package:commerce_app/features/favourite/ui/favourite_screen.dart';
import 'package:commerce_app/features/home/ui/home_screen.dart';
import 'package:commerce_app/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex=0;

  List<Widget> screens =[
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    bool isHomeSelected = currentIndex ==0 ;
    bool isCartSelected = currentIndex ==1 ;
    bool isFavSelected = currentIndex ==2 ;
    bool isProfileSelected = currentIndex ==3 ;
    return Scaffold(
      bottomNavigationBar:
      ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.r),
          topRight: Radius.circular(15.r),
        ),
        child: BottomNavigationBar(
          type:BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: AppColors.container1Background,
          unselectedItemColor:AppColors.unselectedNavBar ,
            currentIndex: currentIndex,
          onTap: (index){

            setState(() {
              currentIndex=index;
            });
          } ,
            items:
        [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: isHomeSelected? AppColors.container1Background:AppColors.unselectedNavBar,),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: isCartSelected? AppColors.container1Background:AppColors.unselectedNavBar),label: "Cart",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: isFavSelected? AppColors.container1Background:AppColors.unselectedNavBar),label: "Favourite",),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: isProfileSelected? AppColors.container1Background:AppColors.unselectedNavBar),label: "Profile",),
        ]
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
