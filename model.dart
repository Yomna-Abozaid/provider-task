import 'package:flutter/cupertino.dart';

class Model extends ChangeNotifier{
  late String name;
  late String email;
  late String image;
  late String mobileNumber;
  late String password;
  bool get isValid => name.isNotEmpty && email.isNotEmpty && image.isNotEmpty && mobileNumber.isNotEmpty && password.isNotEmpty;
  int counter=0;
  nameNotifier(){
    notifyListeners();
  }
  emailNotifier(){
    notifyListeners();
  }
  imageNotifier(){
    notifyListeners();
  }
  mobileNumberNotifier(){
    notifyListeners();
  }
  passwordNotifier(){
    notifyListeners();
  }
  inc(){
    counter++;
    notifyListeners();
  }
  dec(){
    if(counter>0){
      counter--;
    }
    notifyListeners();
  }
}
