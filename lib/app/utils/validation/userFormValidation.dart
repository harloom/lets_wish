
import 'package:easy_localization/easy_localization.dart';
import 'package:validators/validators.dart';
class UserValidation{


   static String formIsEmpty(String value) {
    if (value.isEmpty) {
      return 'namaValdiation'.tr();
    }
    return null;
  }

  static String formEmail(String value){
     if(!isEmail(value)){
       return "Ini Bukan Email!";
     }
     return null;
  }

}