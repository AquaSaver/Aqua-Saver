
import 'package:internship/core/class/crud.dart';
import 'package:internship/linkApi.dart';

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postdata(String email) async {
    var response = await crud.postData(AppLink.checkmail, {
     
       "email":email,

    });
    return response.fold((l) => l, (r) => r);
  }
}
