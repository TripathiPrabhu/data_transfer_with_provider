import 'package:data_transfer_with_provider/helper/myContainer.dart';
import 'package:data_transfer_with_provider/provider/changeSubject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Provider.of<ChangeProduct>(context).Subject);
      return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.maxFinite,
          height: 80.0,
          decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(child: Text('I am learning '+Provider.of<ChangeProduct>(context, listen: false).Subject,
            style: TextStyle(fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold),
          )),
        ),
      ),
          MyContainer('Provider',),
          MyContainer('GetX',),
          MyContainer('Blocs',),
        ],
      ),
    );
  }
}

