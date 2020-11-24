import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String title;
  final String description;
  const Task({Key key, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? ("Unnamed Task"),
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
              description ?? ("no description added"),
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
