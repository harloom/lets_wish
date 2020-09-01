import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lets_wish/app/data/dummy/dummy.dart';
import 'package:lets_wish/app/theme/constWidget.dart';

import 'package:lets_wish/app/theme/themeData.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  final Color bgColor;

  const HomePage({Key key, this.bgColor = Colors.white70}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;
  PanelController panelController = PanelController();
  final sliderPosition = new ValueNotifier(1.0);

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

  Widget buildMenuButton(String title, Icon icons,{String path}) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: CustomColors.mainColor,
      onPressed: () async{
        if(path !=null){
            Navigator.of(context).pushNamed(path);
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icons,
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation,
        child: Scaffold(
            body: SafeArea(
                child: SlidingUpPanel(
                controller: panelController,
                onPanelSlide: (position) {
                  sliderPosition.value = position;
                },
                margin: EdgeInsets.only(top: 5),
                defaultPanelState: PanelState.CLOSED,
                minHeight: MediaQuery.of(context).size.height * 0.53,
                maxHeight: MediaQuery.of(context).size.height * 0.8,
                header: Container(
                  width: MediaQuery.of(context).size.width ,
                  height: 30,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 35,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ),
                 panelBuilder: (scrollController){

                return  Container(
                  padding: EdgeInsets.only(top: 40),
                  child: ListView(
                    controller: scrollController,
                    children: <Widget>[

                    ],
                  )
                );
          },


          body: Center(
            child: Container(
              color: CustomColors.backgroundMain,
              child: ListView(
                children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    height: MediaQuery.of(context).size.height * 0.2,
                    autoPlayInterval: Duration(seconds: 5),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders
          )
                ),
              ),
                ],
              ),
            )
          ),
          borderRadius:ConstWidget.borderRadiusPannel
        ))));
  }
}
