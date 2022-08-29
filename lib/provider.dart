import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Liketheitem extends ChangeNotifier{
  bool likeit = false;

  void Checkthelike(bool liked){
    if(liked == false){
      print("This is true item");
      likeit = true;
      notifyListeners();
    }
    else{
      print("This is false item");
      likeit =false;
      notifyListeners();
    }
  }
}