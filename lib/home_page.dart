import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:practice_flutter/constants/custom_appbar.dart';
import 'package:practice_flutter/home_page_slider/home_slider.dart';
import 'package:practice_flutter/items_page.dart';

import 'constants/itemdrawer.dart';
import 'constants/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int visit = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white10,
          child: Padding(
            padding: EdgeInsets.only(
              top: 15.sp,
              left: 15.sp,
              right: 15.sp,
            ),
            child: ListView(
              children: [
                CustomAppBar(
                  bgColor: Colors.white,
                  appBarTitle: "Home",
                  leadingIcon: Icon(Icons.dashboard),
                  profileImage: Image.asset("assets/images/3.png"),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    const SearchBar(searchBarText: 'Search....'),
                    SizedBox(
                      width: 10.w,
                    ),
                    buttonOne,
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SliderPage(
                            discount: "50 %",
                            productImage: Image.asset("assets/images/2.png"),
                            gradientStartColor: Colors.deepPurple,
                            gradientEndColor: Colors.lightBlueAccent,
                            starColor: Colors.white,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),

                          SliderPage(
                            discount: "20 %",
                            productImage: Image.asset("assets/images/1.png"),
                            gradientStartColor: Colors.red,
                            gradientEndColor: Colors.orangeAccent,
                            starColor: Colors.white,
                          ),

                          SizedBox(
                            width: 10.w,
                          ),

                          SliderPage(
                            discount: "20 %",
                            productImage: Image.asset("assets/images/4.png"),
                            gradientStartColor: Colors.black,
                            gradientEndColor: Colors.greenAccent,
                            starColor: Colors.white,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.circle,
                      size: 05.sp,
                      color: Colors.black38,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.circle,
                      size: 05.sp,
                      color: Colors.black38,
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 70.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 5.sp,
                            right: 5.sp,
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  color: Colors.pink.shade300,
                                  size: 20.sp,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(
                                  "All",
                                  style: TextStyle(
                                    color: Colors.pink.shade300,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 10.sp,
                            right: 20.sp,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/4.png",
                                  width: 40.w,
                                  height: 20.h,
                                ),
                                Text(
                                  "Footwear",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 10.sp,
                            right: 20.sp,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.watch,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Watch",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 10.sp,
                            right: 20.sp,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.home,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 10.sp,
                            right: 20.sp,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.car_crash,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Car",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                            top: 20.sp,
                            bottom: 20.sp,
                            left: 10.sp,
                            right: 20.sp,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.pedal_bike_outlined,
                                  size: 25.sp,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  "Cycle",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ItemsPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 155.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: Colors.lightGreenAccent.shade100,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.sp),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.sp),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 10.w,
                                          right: 10.w,
                                          top: 5.h,
                                          bottom: 5.h,
                                        ),
                                        child: Text(
                                          "New",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/shoe.png",
                                    width: 100.w,
                                    height: 80.h,
                                    fit: BoxFit.fill,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Nike Shoes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "\$12.00",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.lightBlueAccent.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.sp),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.w,
                                        right: 10.w,
                                        top: 5.h,
                                        bottom: 5.h,
                                      ),
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/1.png",
                                  width: 100.w,
                                  height: 100.h,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Men Collection",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black54),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$18.00",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.purpleAccent.withOpacity(0.3),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.sp),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.w,
                                        right: 10.w,
                                        top: 5.h,
                                        bottom: 5.h,
                                      ),
                                      child: Text(
                                        "New",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/shoe.png",
                                  width: 100.w,
                                  height: 100.h,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Nike Shoes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black54),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$12.00",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.orange.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.sp),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/chair.png",
                                  width: 130.w,
                                  height: 130.h,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Chair",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black54),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$10.00",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.pinkAccent.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.sp),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/2.png",
                                  width: 120.w,
                                  height: 100.h,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Bata Shoe",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black54),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$10.00",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 155.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.sp),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/4.png",
                                  width: 120.w,
                                  height: 120.h,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Bata Shoe",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black54),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "\$10.00",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBarInspiredOutside(
        items: const [
          TabItem(
            icon: Icons.home,
          ),
          TabItem(
            icon: Icons.heart_broken,
          ),
          TabItem(
            icon: Icons.shopping_bag,
          ),
          TabItem(
            icon: Icons.car_crash,
          ),
          TabItem(
            icon: Icons.person,
          ),
        ],
        backgroundColor: Colors.white,
        color: Colors.black38,
        colorSelected: Colors.white,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
        top: -28,
        animated: true,
        itemStyle: ItemStyle.circle,
        chipStyle: const ChipStyle(notchSmoothness: NotchSmoothness.sharpEdge),
      ),
    );
  }
}
