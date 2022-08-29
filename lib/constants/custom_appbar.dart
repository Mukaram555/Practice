import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTitle;
  final Icon leadingIcon;
  final Image profileImage;
  final Color bgColor;
  const CustomAppBar({Key? key,required this.bgColor,required this.appBarTitle,required this.leadingIcon,required this.profileImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      color: bgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            width: 30.w,
            height: 30.h,
            child: Icon(
              Icons.dashboard,
              color: Colors.pink,
              size: 18.sp,
            ),
          ),
          Text(
            appBarTitle,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.mail,
                    color: Colors.black38,
                    size: 20.sp,
                  ),
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: profileImage,
                ),
              ),
            ],
          )
        ],
      ),
    ),);
  }
}

