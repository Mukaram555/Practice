import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchBar extends StatelessWidget {
  final String searchBarText;
  const SearchBar({Key? key,required this.searchBarText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 1),
            color: Colors.white),
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
          child: TextField(
            decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                hintText: searchBarText,
                border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}

