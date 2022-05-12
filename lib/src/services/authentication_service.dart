import 'package:rocket_chat_client/src/models/authen/login.dart';
import 'package:rocket_chat_client/src/models/authentication.dart';
import '../models/user.dart';
import 'api_services.dart';

class AuthenticationService {

  AuthenticationService();

  Future<LoginResponse> login(String user, String password) {
    return ApiServices.get().login(
      LoginModel(user: user, password: password)
    );
  }

  Future<UserModel> me() {
    return ApiServices.get().getMe();
  }
}
