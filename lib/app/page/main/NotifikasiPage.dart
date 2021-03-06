import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:easy_localization/easy_localization.dart';
class NotificationPage extends StatefulWidget {
  final Color bgColor;

  const NotificationPage({Key key, this.bgColor=Colors.white70}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  PanelController panelController = PanelController();
  final sliderPosition = new ValueNotifier(1.0);
  final _formKey = GlobalKey<FormState>();

  final _marginFrom = 20.0;



  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return FadeTransition(
        opacity: _animation,
        child: Scaffold(

        ));
  }

}
