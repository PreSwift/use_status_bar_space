import 'package:flutter/material.dart';
import 'package:use_status_bar_space/use_status_bar_space.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool use = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('is use : $use\n'),
        ),
        floatingActionButton: MaterialButton(
          onPressed: () {
            if (!use) {
              setState(() {
                use = true;
              });
              UseStatusBarSpace.use();
            } else {
              setState(() {
                use = false;
              });
              UseStatusBarSpace.unUse();
            }
          },
          child: Icon(Icons.add_circle_sharp, size: 50, color: Colors.red,),
        ),
      ),
    );
  }
}
