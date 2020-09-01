import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Const {
  static String urlSiakad = "https://siakad.teknokrat.ac.id/";
  static String urlSpada = "https://spada.teknokrat.ac.id/";
  static String urlFsipPPL = "https://docs.google.com/forms/d/e/1FAIpQLSfY6pUKiu-_jevleixvSv7kHD9ADcY0BxjJ1AGDelYUNVW-Lg/viewform";



  static ChromeSafariBrowserClassOptions optionToolbarWeb = ChromeSafariBrowserClassOptions(
      android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false,
          toolbarBackgroundColor: "#a50d0d"),
      ios: IOSSafariOptions(barCollapsingEnabled: true));



}
