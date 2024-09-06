import 'package:get/get.dart';

validInput(String val, String type, int min, int max) {
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isEmail(val)) {
      return "not valid phone";
    }
  }
  if (val.isEmpty) {
    return "can't be empty";
  }
   if (val.length < min) {
    return "can't be less than $min";
  }
  if (val.length > max) {
    return "can't be more than $max";
  }
}
