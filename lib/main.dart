import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'app/App.dart';
import 'app/data/sessions/SessionsAuth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SessionAuth().init();
  runApp(
      EasyLocalization(
        child: MyApp(),
        supportedLocales: [
          Locale('en','US'),
          Locale('id','ID')

        ],
        fallbackLocale: Locale('en','US') ,
        path: 'assets/langs/langs.csv',
        assetLoader: CsvAssetLoader(),

      ));
}


