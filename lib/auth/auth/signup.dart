import 'package:internship/core/class/crud.dart';
import 'package:internship/linkApi.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postdata(String username,String password,String email,String phone) async {
    var response = await crud.postData(AppLink.signup, {
      "username": username,
       "email":email,
        "password":password,
         "phone":phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
