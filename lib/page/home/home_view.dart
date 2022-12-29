import 'package:bank/utils/image/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';
import 'home_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController editingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blue2.withOpacity(0.9),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            HomeVidgets.topTextIcon(text: "Tinkoff", onTap: () {}),
            SizedBox(height: 10.h),
            HomeVidgets.inputRow(controller: editingController, ontap: () {}),
            SizedBox(height: 10.h),
            HomeVidgets.tetxRow(text1: "Favorites", text2: "More"),
            SizedBox(
              height: 110.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HomeVidgets.miniCart(
                      color: AppColors.blue3, image: AppImage.miniCar1),
                  HomeVidgets.miniCart(
                      color: AppColors.green, image: AppImage.miniCar2),
                  HomeVidgets.miniCart(
                      color: AppColors.blue, image: AppImage.miniCar3),
                  HomeVidgets.miniCart(
                      color: AppColors.blue2, image: AppImage.miniCar4),
                  HomeVidgets.miniCart(
                      color: AppColors.yello, image: AppImage.miniCar5),
                  HomeVidgets.miniCart(
                      color: AppColors.green, image: AppImage.miniCar6),
                  HomeVidgets.miniCart(
                      color: AppColors.black, image: AppImage.miniCar7),
                ],
              ),
            ),
            HomeVidgets.text(text: "Reminders"),
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  HomeVidgets.remindersMainRow(
                    number: "\$22",
                    text: "Rent",
                  ),
                  HomeVidgets.remindersMainRow(
                    number: "\$122",
                    text: "Internet",
                  ),
                  HomeVidgets.remindersMainRow(
                    number: "\$42",
                    text: "Mobile",
                  ),
                  HomeVidgets.remindersMainRow(
                    number: "\$92",
                    text: "Fitness",
                  ),
                ],
              ),
            ),
            HomeVidgets.rowIcons(),
            //
            HomeVidgets.buttonBarTap(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: const Radius.circular(40).r,
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  builder: (context) {
                    return showModalBottomSheetMain();
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget showModalBottomSheetMain() {
    return SizedBox(
      height: 300.h,
      child: Column(
        children: [
          SizedBox(height: 15.h),
          Divider(
            color: AppColors.black.withOpacity(0.2),
            thickness: 4.sp,
            indent: 140.w,
            endIndent: 140.w,
          ),
          Container(
            margin: const EdgeInsets.all(20).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'RobotoSemiBold',
                  ),
                ),
                Icon(Icons.add_outlined, size: 27.sp)
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 170.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                cart(
                  summa: "\$3.214.235",
                  code: "....  ....  ....  ....   9832",
                  color: AppColors.blue2,
                ),
                cart(
                  summa: "\$9.213.943",
                  code: "....  ....  ....  ....   9832",
                  color: AppColors.black,
                ),
                cart(
                  summa: "\$4.213.093",
                  code: "....  ....  ....  ....   9832",
                  color: AppColors.green,
                ),
                cart(
                  summa: "\$3.843.214",
                  code: "....  ....  ....  ....   9832",
                  color: AppColors.blue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container cart({
    required Color? color,
    required String? summa,
    required String? code,
  }) {
    return Container(
      width: 260.w,
      margin: const EdgeInsets.only(
        left: 20,
        top: 10,
        bottom: 10,
      ).r,
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(20).r,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(0.0, 0.0),
            color: Colors.grey,
          )
        ],
      ),
      child: Stack(
        children: [
          // text
          Positioned(
            top: 30.h,
            left: 20.w,
            child: Text(
              "Balance",
              style: TextStyle(
                color: AppColors.grey.withOpacity(0.7),
                fontSize: 13.sp,
                fontFamily: 'RobotoSemiBold',
              ),
            ),
          ),

          //summa
          Positioned(
            top: 60.h,
            left: 20.w,
            child: Text(
              summa!,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 23.sp,
                fontFamily: 'RobotoSemiBold',
              ),
            ),
          ),

          // code
          Positioned(
            top: 100.h,
            left: 20.w,
            child: Text(
              code!,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 13.sp,
                fontFamily: 'RobotoSemiBold',
              ),
            ),
          ),

          // cartBackgraund image
          Positioned(
            right: -45.w,
            bottom: -45.h,
            child: SizedBox(
              width: 200.w,
              height: 200.h,
              child: Image.asset(
                AppImage.cartBackgraund,
                color: AppColors.grey.withOpacity(0.2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
