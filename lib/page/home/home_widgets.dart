import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors/app_colors.dart';

class HomeVidgets {
  static Container topTextIcon({
    required String? text,
    required GestureTapCallback? onTap,
  }) {
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 33).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeVidgets.text(text: text!),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13).r,
              gradient: LinearGradient(colors: [
                AppColors.blue3.withOpacity(0.3),
                AppColors.blue3.withOpacity(0.3),
              ]),
            ),
            child: IconButton(
              onPressed: onTap!,
              icon: Icon(
                Icons.radio_button_checked_outlined,
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Container inputRow({
    required TextEditingController? controller,
    required GestureTapCallback? ontap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10).r,
      padding: const EdgeInsets.symmetric(horizontal: 18).r,
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).r,
        gradient: LinearGradient(colors: [
          AppColors.blue3.withOpacity(0.3),
          AppColors.blue3.withOpacity(0.3),
        ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.signal_cellular_alt,
              color: AppColors.white,
            ),
          ),
          Expanded(
            flex: 13,
            child: TextField(
              cursorColor: AppColors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                iconColor: AppColors.white,
                suffixIcon: IconButton(
                  icon: Icon(
                    size: 25.sp,
                    Icons.search,
                    color: AppColors.white,
                  ),
                  onPressed: ontap!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Container tetxRow({required String? text1, required String? text2}) {
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: const EdgeInsets.only(right: 33).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(text: text1!),
          Text(
            text2!,
            style: TextStyle(
              color: AppColors.white.withOpacity(0.7),
              fontSize: 14.sp,
              fontFamily: 'RobotoSemiBold',
            ),
          ),
        ],
      ),
    );
  }

  static Container miniCart({required String? image, required Color? color}) {
    return Container(
      width: 100.w,
      margin: const EdgeInsets.all(10).r,
      padding: const EdgeInsets.all(5).r,
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(25).r,
      ),
      child: Image.asset(image!, color: Colors.white),
    );
  }

  static Container text({required String? text}) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(20),
      child: Text(
        text!,
        style: TextStyle(
          color: AppColors.white,
          fontSize: 20.sp,
          fontFamily: 'RobotoSemiBold',
        ),
      ),
    );
  }

  static Widget remindersMainRow({
    required String? text,
    required String? number,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5).r,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).r,
        gradient: LinearGradient(
          colors: [
            AppColors.blue3.withOpacity(0.2),
            AppColors.blue3.withOpacity(0.2),
          ],
        ),
      ),
      child: Row(
        children: [
          // one text
          Expanded(
              child: Text(
            text!,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 14.sp,
              fontFamily: 'RobotoSemiBold',
            ),
          )),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ).r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).r,
              gradient: LinearGradient(colors: [
                AppColors.blue.withOpacity(0.2),
                AppColors.blue.withOpacity(0.2),
              ]),
            ),

            // summa$
            child: Text(
              number!,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14.sp,
                fontFamily: 'RobotoSemiBold',
              ),
            ),
          ),
          SizedBox(width: 10.h),

          // list text
          Text(
            "Pay new",
            style: TextStyle(
              color: AppColors.white.withOpacity(0.6),
              fontFamily: 'RobotoSemiBold',
            ),
          )
        ],
      ),
    );
  }

  static Container rowIcons() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 20.h),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.person_outline,
            color: AppColors.white,
            size: 25.sp,
          ),
          Container(
            width: 70.w,
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20).r,
              color: AppColors.blue2.withOpacity(0.3),
            ),
            child: Icon(
              Icons.send_outlined,
              color: AppColors.white,
              size: 30.sp,
            ),
          ),
          Icon(
            Icons.settings_outlined,
            color: AppColors.white,
            size: 25.sp,
          ),
        ],
      ),
    );
  }

  static GestureDetector buttonBarTap({required GestureTapCallback? onTap}) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        width: double.infinity,
        height: 41.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(40).r,
            topRight: const Radius.circular(40).r,
          ),
        ),
        child: Divider(
          color: AppColors.black.withOpacity(0.2),
          thickness: 4.sp,
          indent: 140.w,
          endIndent: 140.w,
        ),
      ),
    );
  }
}
