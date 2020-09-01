
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lets_wish/app/data/const/const_menu.dart';
import 'package:lets_wish/app/theme/themeData.dart';
import 'package:line_icons/line_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'index.dart';

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 1;
  final  List<Widget> _pages= <Widget>[
    ExplorerPage(),
    HomePage(),
    NotificationPage(),
    UserPage(),



  ];

  PageController _pageController = PageController();
  List<GButton> tabs = new List();

  @override
  void initState() {
    super.initState();
    var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
    double gap = 10;

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.white,
      iconColor: CustomColors.mainColor,
      textColor: Colors.white,
      backgroundColor: CustomColors.mainColor,
      iconSize: 24,
      padding: padding,
      icon: LineIcons.map,
      // textStyle: t.textStyle,
      text: 'explorer',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.white,
      iconColor: CustomColors.mainColor,
      textColor: Colors.white,
      backgroundColor: CustomColors.mainColor,
      iconSize: 24,
      padding: padding,
      icon: LineIcons.home,
      // textStyle: t.textStyle,
      text: 'beranda'.tr(),
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.white,
      iconColor: CustomColors.mainColor,
      textColor: Colors.white,
      backgroundColor: CustomColors.mainColor,
      iconSize: 24,
      padding: padding,
      icon: LineIcons.bell,
      // textStyle: t.textStyle,
      text: 'notif'.tr(),
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.white,
      iconColor: CustomColors.mainColor,
      textColor: Colors.white,
      backgroundColor: CustomColors.mainColor,
      iconSize: 24,
      padding: padding,
      icon: LineIcons.user,
      // textStyle: t.textStyle,
      text: 'me'.tr(),
    ));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle :true,
        title: Text("App"),
        backgroundColor: Colors.white,
      ),
      endDrawer:
      GFDrawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: Text('Logout'),
                  trailing: Icon(Icons.exit_to_app),
                  onTap: (){
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView.builder(
          onPageChanged: (page){
            setState(() {
              _selectedIndex = page;
            });
          },
          controller: _pageController,
          itemCount: _pages.length,
          itemBuilder: (context,position){
            return _pages[position];
          }),

      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(.20),
                  offset: Offset(0,15)
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
            child: GNav(
              tabs: tabs,
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex = index;
                });
                _pageController.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );

  }
}