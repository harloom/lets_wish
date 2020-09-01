import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:lets_wish/app/theme/themeData.dart';



import 'page/main/TabPage.dart';
import 'routes/Routes.dart';


class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'letsWish',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

    theme: ThemeData(
        primaryColor : CustomColors.mainColor ,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: TabPage(),
    onGenerateRoute: Routes.generalRoute,
  );
}
}


