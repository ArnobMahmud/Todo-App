import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Get Started!!!",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF211551),
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Ubuntu'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hello user! Welcome to Todo App. This is a dummy text. You can edit and write down here.",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF111161),
              ),
            )
          ],
        ),
      ),
    );
  }
}
