import 'package:data_transfer_with_provider/provider/changeSubject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

void main (){
  return runApp(
      MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=>ChangeProduct(),
      child: MaterialApp(

        title: 'Data Parsing from one screen to another with the help of provider',
        home: HomePage(),
      ),
    );
  }
}
