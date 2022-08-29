import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String dropdownValue = " ";

DropdownButton<String> buttonOne = DropdownButton<String>(
  value: dropdownValue,
  icon: const Icon(Icons.menu,color: Colors.pink,),
  iconSize: 24.sp,
  elevation: 16,
  style: const TextStyle(color: Colors.black),
  underline: Container(
    height: 2.h,
  ),
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>[' ','Shoe', 'FootWear', 'Watch', 'Chair','Home','Car','Cycle',]
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
);

void setState(Null Function() param0) {
}
