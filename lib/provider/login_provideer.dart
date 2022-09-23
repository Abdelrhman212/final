import 'package:flutter/cupertino.dart';

class Login_provider extends ChangeNotifier{
String ?password;
void Update_password(String value){
  password=value;
  notifyListeners();

}
final LoginFormKey = GlobalKey<FormState>();
bool is_loading=false;
void Updated_loading(bool value)
{
  is_loading=value;
  notifyListeners();
}
  String ?email;
  void Update_email(String value){
    email=value;
    notifyListeners();

  }
}