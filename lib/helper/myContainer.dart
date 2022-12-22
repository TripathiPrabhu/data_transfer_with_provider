import 'package:data_transfer_with_provider/provider/changeSubject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyContainer extends StatelessWidget {
  String getText;
  MyContainer(@required this.getText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Provider.of<ChangeProduct>(context, listen: false)
              .ChangeSubject(getText);
          //print(Provider.of<ChangeProduct>(context, listen: false).Subject);
        },
        child: Container(
          width: double.maxFinite,
          height: 80.0,
          decoration: BoxDecoration(
              color: Colors.indigo, borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(
            getText,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                letterSpacing: 3),
          )),
        ),
      ),
    );
  }
}
