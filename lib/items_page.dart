import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_flutter/detail_page.dart';
import 'package:practice_flutter/provider.dart';
import 'package:provider/provider.dart';

import 'constants/custom_appbar.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;

  double rate = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  bgColor: Colors.white,
                  appBarTitle: "Home",
                  leadingIcon: const Icon(Icons.dashboard),
                  profileImage: Image.asset("assets/images/3.png"),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 1),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                          child: const TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                hintText: "Search...",
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.article_rounded,
                      size: 38.sp,
                      color: Colors.pink.shade300,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sports Shoes",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Row(
                          children: [
                            Text(
                              "Sort By",
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12.sp),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 15.sp,
                              color: Colors.black38,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsofShoe(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: Colors.white,
                        ),
                        width: 160.w,
                        height: 210.h,
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    if (isPressed == false) {
                                      setState(() {
                                        isPressed = true;
                                      });
                                    } else {
                                      setState(() {
                                        isPressed = false;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.heart_broken,
                                    color:
                                        isPressed ? Colors.black12 : Colors.red,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 140.w,
                                height: 100.h,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.center,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.red.withOpacity(0.4),
                                              Colors.redAccent.withOpacity(0.1),
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    Positioned(
                                        top: -70,
                                        left: -28,
                                        child: Image.asset(
                                          "assets/images/redshoe.png",
                                          width: 190.w,
                                          height: 180.h,
                                          fit: BoxFit.fill,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shoes",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\$100.00",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.black38,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 30.w,
                                        height: 30.h,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red.withOpacity(0.6),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Colors.white,
                      ),
                      width: 160.w,
                      height: 210.h,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  if (isPressed1 == false) {
                                    setState(() {
                                      isPressed1 = true;
                                    });
                                  } else {
                                    setState(() {
                                      isPressed1 = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.heart_broken,
                                  color:
                                      isPressed1 ? Colors.red : Colors.black12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.w,
                              height: 100.h,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.center,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.blue.withOpacity(0.4),
                                            Colors.lightBlueAccent
                                                .withOpacity(0.1),
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: -15,
                                      left: 20,
                                      child: Image.asset(
                                        "assets/images/2.png",
                                        width: 120.w,
                                        height: 120.h,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shoes",
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$200.00",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.black38,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 30.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red.withOpacity(0.6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Colors.white,
                      ),
                      width: 160.w,
                      height: 210.h,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  if (isPressed2 == false) {
                                    setState(() {
                                      isPressed2 = true;
                                    });
                                  } else {
                                    setState(() {
                                      isPressed2 = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.heart_broken,
                                  color:
                                      isPressed2 ? Colors.red : Colors.black12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.w,
                              height: 100.h,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.center,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.4),
                                            Colors.black87.withOpacity(0.1),
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: -10,
                                      left: 20,
                                      child: Image.asset(
                                        "assets/images/4.png",
                                        width: 100.w,
                                        height: 100.h,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shoes",
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$100.00",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.black38,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 30.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red.withOpacity(0.6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Colors.white,
                      ),
                      width: 160.w,
                      height: 210.h,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  if (isPressed3 == false) {
                                    setState(() {
                                      isPressed3 = true;
                                    });
                                  } else {
                                    setState(() {
                                      isPressed3 = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.heart_broken,
                                  color:
                                      isPressed3 ? Colors.red : Colors.black12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.w,
                              height: 100.h,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.center,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.yellow.withOpacity(0.4),
                                            Colors.yellowAccent
                                                .withOpacity(0.1),
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: -15,
                                      left: 20,
                                      child: Image.asset(
                                        "assets/images/shoe.png",
                                        width: 100.w,
                                        height: 100.h,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shoes",
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$200.00",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.black38,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 30.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red.withOpacity(0.6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: Colors.white,
                      ),
                      width: 160.w,
                      height: 210.h,
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  if (isPressed4 == false) {
                                    setState(() {
                                      isPressed4 = true;
                                    });
                                  } else {
                                    setState(() {
                                      isPressed4 = false;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.heart_broken,
                                  color:
                                      isPressed4 ? Colors.red : Colors.black12,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 140.w,
                              height: 100.h,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.center,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.red.withOpacity(0.4),
                                            Colors.redAccent.withOpacity(0.1),
                                          ],
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                  ),
                                  Positioned(
                                      top: -70,
                                      left: -28,
                                      child: Image.asset(
                                        "assets/images/redshoe.png",
                                        width: 190.w,
                                        height: 180.h,
                                        fit: BoxFit.fill,
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Shoes",
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "\$100.00",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.sp,
                                          color: Colors.black38,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 30.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red.withOpacity(0.6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Welcome to PAkistan");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: Colors.white,
                        ),
                        width: 160.w,
                        height: 210.h,
                        child: Padding(
                          padding: EdgeInsets.all(8.sp),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    if (isPressed5 == false) {
                                      setState(() {
                                        isPressed5 = true;
                                      });
                                    } else {
                                      setState(() {
                                        isPressed5 = false;
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.heart_broken,
                                    color: isPressed5
                                        ? Colors.red
                                        : Colors.black12,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 140.w,
                                height: 100.h,
                                child: Stack(
                                  children: [
                                    Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.center,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.blue.withOpacity(0.4),
                                              Colors.lightBlueAccent
                                                  .withOpacity(0.1),
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    Positioned(
                                        top: -15,
                                        left: 20,
                                        child: Image.asset(
                                          "assets/images/2.png",
                                          width: 120.w,
                                          height: 120.h,
                                          fit: BoxFit.fill,
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shoes",
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "\$200.00",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14.sp,
                                            color: Colors.black38,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 30.w,
                                        height: 30.h,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red.withOpacity(0.6),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
