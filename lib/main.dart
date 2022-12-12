import 'package:flutter/material.dart';
import 'package:textfield/widget/flag.dart';
import 'package:textfield/widget/important.dart';
import 'package:textfield/widget/task.dart';
import 'package:textfield/widget/textField_widget.dart';

void main() {
  runApp(const MyTrying());
}

class MyTrying extends StatefulWidget {
  const MyTrying({super.key});

  @override
  State<MyTrying> createState() => _MyTryingState();
}

class _MyTryingState extends State<MyTrying> {
  bool securText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Task",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: "Important",
                ),
                Tab(
                  icon: Icon(Icons.flag),
                  text: "Flag",
                ),
              ],
            ),
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            title: Text(" My Day"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            ],
          ),
          body: Container(
            decoration: const BoxDecoration(
              //*  how to use  gradient color
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [
                    0.1,
                    0.4,
                    1
                  ],
                  colors: [
                    Color.fromARGB(255, 107, 105, 105),
                    Color.fromARGB(255, 214, 214, 235),
                    Color.fromARGB(255, 116, 86, 96),
                  ]),
              // color: Colors.amber

              // image: DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage("assets/images/backgroundTwo.jpg"),
              // ),
            ),
            child: const TabBarView(children: [Tasks(), Important(), Flag()]),
          ),
        ),
      ),
    );
  }
}
