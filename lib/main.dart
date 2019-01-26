import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int tapCount = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              MyImage(
                onTap: () {
                  setState(() {
                    tapCount += 1;
                  });
                },
                imagePath: 'assets/my-image.jpg',
              ),
              Text(tapCount.toString())
            ],
          ),
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final Function() onTap;
  final String imagePath;

  const MyImage({
    Key key,
    @required this.onTap,
    @required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.onTap();
      },
      child: Image.asset(
        imagePath,
        height: 100.0,
      ),
    );
  }
}
