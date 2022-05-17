
import '../models/authen/login.dart';
import '../models/authentication.dart';
import '../models/user.dart';
import 'api_services.dart';

class AuthenticationService {
  ApiServices api;
  AuthenticationService(this.api);

  Future<LoginResponse> login(String user, String password) {
    return api.client.login(
      LoginModel(user: user, password: password)
    );
  }

  Future<UserModel> me() {
    return api.client.getMe();
  }
}
