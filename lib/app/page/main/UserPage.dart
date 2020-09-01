import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/types/gf_button_type.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:easy_localization/easy_localization.dart';
class UserPage extends StatefulWidget {
  final Color bgColor;

  const UserPage({Key key, this.bgColor=Colors.white70}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  PanelController panelController = PanelController();
  final sliderPosition = new ValueNotifier(1.0);
  final _formKey = GlobalKey<FormState>();

  final _marginFrom = 20.0;

  String _nama;
  String _NPM = "17312066";
  String _jenisKelamin;
  String _tempatLahir = "";
  DateTime _selectedDate = DateTime.parse('19990119');
  String _agama = "";
  String _noTelp ;
  String _email;



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
