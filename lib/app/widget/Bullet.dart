



import 'package:flutter/material.dart';
import 'package:lets_wish/app/theme/themeData.dart';

class Bullet extends StatelessWidget {

  final Color color ;

  const Bullet({Key key, this.color  = CustomColors.mainColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
    ));
  }
}
