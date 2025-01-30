import 'package:nov_training_session/mvvm/models/requestModels/auth_request_model.dart';

class AuthValidator {
  String? signInValidator(SignInRequestModel request) {
    final RegExp validEmail = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (request.email.isEmpty) {
      return "Please enter email address";
    } else if (!validEmail.hasMatch(request.email)) {
      return "Please enter valid email";
    } else if (request.password.isEmpty) {
      return "Please enter password";
    }
    return null;
  }

  String? signUpValidator(SignUpRequestModel request) {
    final RegExp validEmail = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (request.name.isEmpty) {
      return "Please enter user name";
    } else if (request.email.isEmpty) {
      return "Please enter email address";
    } else if (!validEmail.hasMatch(request.email)) {
      return "Please enter valid email";
    } else if (request.password.isEmpty) {
      return "Please enter password";
    }
    return null;
  }
}
