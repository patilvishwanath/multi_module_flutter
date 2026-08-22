import 'package:extensions/extensions.dart';
import 'package:login/data/response/login_response.dart';
import 'package:login/domain/model/login_model.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() {
    return LoginModel(name:this?.name.orEmpty() ?? Constant.empty,
        phone:this?.phone.orEmpty() ?? Constant.empty ,
        age: this?.age.orZero() ?? Constant.zero);
  }
}