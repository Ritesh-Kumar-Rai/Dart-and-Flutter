import 'package:flutter/material.dart';

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget
// 3. InheritedWidget (more complex)

class SecondWidgetStateless extends StatelessWidget {
  // constructor must to write to pass a key
  const SecondWidgetStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Hare Krsna 2", textDirection: TextDirection.ltr);
  }
}

// implementing Scaffold
class ThirdWidgetStateless extends StatelessWidget {
  // constructor
  ThirdWidgetStateless({super.key});

  // build method
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            "Scaffold Widget, Namaste🙏",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
