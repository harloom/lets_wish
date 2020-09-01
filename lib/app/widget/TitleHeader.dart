import 'package:flutter/material.dart';
import 'package:lets_wish/app/theme/themeData.dart';

import 'Bullet.dart';
class TitleHeader extends StatelessWidget {
  final String text;

  const TitleHeader({Key key,@required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Bullet(),
              ),
              Expanded(
                child: Text(text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 11.0),),
              )
            ],
          ),
          Divider(color: CustomColors.maastrichtBlue,)
        ],
      ),
    );
  }
}
