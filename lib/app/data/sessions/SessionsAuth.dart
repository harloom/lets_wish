
import 'package:shared_preferences/shared_preferences.dart';

class SessionAuth{

  static final SessionAuth _instance = SessionAuth._ctor();

  static final String keyNPM = "NPM";
  static final String keyJwt = "keyJwt";
  static final String keyPassword = "password";
  static final String saveLogin = "saveLogin";
  factory SessionAuth(){
    return _instance;
  }
  SessionAuth._ctor();

  SharedPreferences _preferences;
  init() async{
    _preferences = await SharedPreferences.getInstance();
  }
  get npm {
    return _preferences.getString(keyNPM);
  }

  set npm (String npm){
    _preferences.setString(keyNPM, npm);
  }

  get password {
    return _preferences.getString(keyPassword);
  }

  set password (String password){
    _preferences.setString(keyPassword, password);
  }
  get saveSession {
    return _preferences.getString(keyJwt);
  }

  set saveSession (String npm){
    _preferences.setString(keyNPM, npm);
  }


  Future setJwtToken(String value){
    return _preferences.setString(keyJwt, value);
  }

  get jwtToken{
    _preferences.getString(keyJwt);
  }




}