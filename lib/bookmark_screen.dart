import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(27, 30, 37, 100),
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/trash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
