import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

const colorLeft = Color(0xff2e2e2e);
const colorRight = Color(0xff272727);
const colorWindowButtons = Color(0xffcccccc);
const colorWindowButtonClose = Color(0xffd71526);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Row(
        children: [LeftSide(), RightSide()],
      )),
    );
  }
}

class LeftSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: Container(
          color: colorLeft,
          child: Column(
            children: [
              WindowTitleBarBox(
                child: MoveWindow(),
              )
            ],
          ),
        ));
  }
}

class RightSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            color: colorRight,
            child: Column(
              children: [
                WindowTitleBarBox(
                    child: Row(
                  children: [
                    Expanded(child: MoveWindow()),
                    WindowButtons(),
                  ],
                ))
              ],
            )));
  }
}

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(
            colors: WindowButtonColors(iconNormal: colorWindowButtons)),
        MaximizeWindowButton(
            colors: WindowButtonColors(iconNormal: colorWindowButtons)),
        CloseWindowButton(
            colors: WindowButtonColors(
                iconNormal: colorWindowButtons,
                mouseOver: colorWindowButtonClose)),
      ],
    );
  }
}
