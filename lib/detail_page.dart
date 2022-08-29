import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsofShoe extends StatefulWidget {
  const DetailsofShoe({Key? key}) : super(key: key);

  @override
  State<DetailsofShoe> createState() => _DetailsofShoeState();
}

class _DetailsofShoeState extends State<DetailsofShoe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white12,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black38,
                            size: 18.sp,
                          ),
                        ),
                        Icon(
                          Icons.heart_broken,
                          color: Colors.red,
                          size: 16.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 320.h,
                  // color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/2.png",
                        width: 100.sp,
                        height: 100.sp,
                      ),
                      SizedBox(
                        height: 05.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.sp),
                        child: Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateX(0.6),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red.withOpacity(0.3),
                                ),
                                width: 200.w,
                                height: 200.h,
                              ),
                              Positioned(
                                left: 5.sp,
                                top: 5.sp,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  width: 190.w,
                                  height: 190.h,
                                ),
                              ),
                              Positioned(
                                bottom: -20,
                                left: 80.sp,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38,
                                  ),
                                  width: 50.sp,
                                  height: 50.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.sp),
                        topLeft: Radius.circular(20.sp),
                      ),
                      color: Colors.white),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 30.sp,
                      left: 20.sp,
                      right: 20.sp,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Puma Max",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                            Text(
                              "\$100.00",
                              style: TextStyle(
                                color: Colors.red.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "By Puma",
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 18.sp,
                                ),
                                Text(
                                  "4.3",
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red.withOpacity(0.6),
        child: Icon(
          Icons.shopping_basket,
          size: 20.sp,
        ),
      ),
    );
  }
}
