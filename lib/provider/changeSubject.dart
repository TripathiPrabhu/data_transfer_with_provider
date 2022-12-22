import 'package:flutter/material.dart';


class ChangeProduct extends ChangeNotifier{
  String Subject = '';
  //get (context)=> Subject;
void ChangeSubject (String newSubject){
  Subject =newSubject;
  print(Subject);
 //print(Subject);
  notifyListeners();
}



}