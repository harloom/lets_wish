
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("404 Not Found!"),
            BackButton()
          ],

        ),
      ),
    );
  }
}
