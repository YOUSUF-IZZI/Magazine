import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/utils/colors.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.name, required this.onPressed});
  final String name;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      height: 50.h,
      color: AppColors.appColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      onPressed: () {
        return onPressed();
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name, style: TextStyle(color: Colors.white, fontSize: 20.h, ),),
        ],
      ),
    );
  }
}

