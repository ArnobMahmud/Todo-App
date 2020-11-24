import 'package:flutter/material.dart';
import 'package:todo_app/pages/Task-edit-page.dart';
import 'package:todo_app/widgets/Task.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFF6F6F6),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0, top: 24.0),
                    child: Image(
                      image: AssetImage("images/logo.png"),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Task(
                          title: "Get Started",
                          description:
                              "Hello user. Welcome to Todo App. This is a dummy text. You can edit it and write down by yourself.",
                        ),
                        Task(),
                        Task(),
                        Task(),
                        Task(),
                        Task(),
                        Task(),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskEditPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        color: Color(0xFF7349FE),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image(
                      image: AssetImage("images/add_icon.png"),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
