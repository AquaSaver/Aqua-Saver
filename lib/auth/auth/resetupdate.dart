
import 'package:internship/core/class/crud.dart';
import 'package:internship/linkApi.dart';

class ResetData {
  Crud crud;

  ResetData(this.crud);

  postdata(String email,String phone,String username) async {
    var response = await crud.postData(AppLink.update, {
     
       "email":email,
       "phone":phone,
       "username":username,

    });
    return response.fold((l) => l, (r) => r);
  }
}
