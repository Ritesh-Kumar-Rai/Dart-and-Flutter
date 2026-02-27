import 'package:flutter/material.dart';
import 'package:learning_flutter/tutorials/01_create_widgets.dart';

void main() {
  // runApp(Text("Hare Krsna", textDirection: TextDirection.ltr)); // 1st

  /// runApp expects a widget to render only Text or other classes may not render as we expect..

  // runApp(const FirstWidgetStateless()); // 2nd
  // runApp(const SecondWidgetStateless()); // 3rd
  // runApp(const MyApp()); // 4th
  runApp(ThirdWidgetStateless());
}

class FirstWidgetStateless extends StatelessWidget {
  const FirstWidgetStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("First Widget", textDirection: TextDirection.ltr);
  }
}

// using Material Design Pattern

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: Text(
          "Using Material Design Class",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
