import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/api/api_provider.dart';
import 'package:nov_training_session/mvvm/api/api_result.dart';
import 'package:nov_training_session/mvvm/api/end_points.dart';
import 'package:nov_training_session/mvvm/extensions/preference_manager.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';
import 'package:nov_training_session/mvvm/models/requestModels/auth_request_model.dart';
import 'package:nov_training_session/mvvm/models/responseModels/auth_response_model.dart';
import 'package:nov_training_session/mvvm/pages/main_page.dart';
import 'package:nov_training_session/mvvm/pages/project_login_page.dart';

class AuthViewModel extends GetxController {
  final signUpObserver = ApiResult<SignInResponseModel>.init().obs;
  final signInObserver = ApiResult<SignInResponseModel>.init().obs;
  final apiProvider = Get.put(ApiProvider());
  final preferenceManager = Get.put(PreferenceManager());
  final fetchUserObserver = ApiResult<UserProfileResponseModel>.init().obs;
  final usersObserver = ApiResult<FetchUserResponseModel>.init().obs;

  // Sign Up Api

  void signUpRequestAction(SignUpRequestModel request) async {
    try {
      signUpObserver.value = ApiResult.loading();
      final response =
          await apiProvider.post(EndPoints.signUp, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = SignInResponseModel.fromJson(body);
        if (responseData.status == 1) {
          await preferenceManager.setValue(
              preferenceManager.token, responseData.data?.token ?? "");
          signUpObserver.value = ApiResult.success(responseData);
          Get.offAll(() => const MainPage());
        } else {
          signUpObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: "Failed", message: responseData.message ?? "");
        }
      } else {
        Get.showSnackBar(
            title: "Something went wrong",
            message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.showSnackBar(title: "Something went wrong", message: "$e");
      signUpObserver.value = ApiResult.error(e.toString());
    }
  }

  // Sign In Api
  void signInRequestAction(SignInRequestModel request) async {
    try {
      signInObserver.value = ApiResult.loading();
      final response =
          await apiProvider.post(EndPoints.signIn, request.toJson());
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = SignInResponseModel.fromJson(body);
        if (responseData.status == 1) {
          await preferenceManager.setValue(
              preferenceManager.token, responseData.data?.token ?? "");
          signInObserver.value = ApiResult.success(responseData);
          Get.offAll(() => const MainPage());
        } else {
          signInObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: "Failed", message: responseData.message ?? "");
        }
      } else {
        Get.showSnackBar(
            title: "Something went wrong",
            message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.showSnackBar(title: "Something went wrong", message: "$e");
      signInObserver.value = ApiResult.error(e.toString());
    }
  }

  // Fetch User Details

  void fetchUserDetailApi() async {
    try {
      fetchUserObserver.value = ApiResult.loading();
      final response = await apiProvider.get(EndPoints.fetchUserDetails);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = UserProfileResponseModel.fromJson(body);
        if (responseData.status == 1) {
          fetchUserObserver.value = ApiResult.success(responseData);
        } else {
          fetchUserObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: "Failed", message: responseData.message ?? "");
        }
      } else {
        Get.showSnackBar(
            title: "Something went wrong",
            message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.showSnackBar(title: "Something went wrong", message: "$e");
      fetchUserObserver.value = ApiResult.error(e.toString());
    }
  }

  // User Details Api

  void userDetailApi() async {
    try {
      usersObserver.value = ApiResult.loading();
      final response = await apiProvider.get(EndPoints.fetchUsers);
      final body = response.body;
      if (response.isOk && body != null) {
        final responseData = FetchUserResponseModel.fromJson(body);
        if (responseData.status == 1) {
          usersObserver.value = ApiResult.success(responseData);
        } else {
          usersObserver.value = ApiResult.error(responseData.message ?? "");
          Get.showSnackBar(
              title: "Failed", message: responseData.message ?? "");
        }
      } else {
        Get.showSnackBar(
            title: "Something went wrong",
            message: "${response.statusCode ?? 0}");
      }
    } catch (e) {
      Get.showSnackBar(title: "Something went wrong", message: "$e");
      usersObserver.value = ApiResult.error(e.toString());
    }
  }

  Future<void> getMain() async {
    final token = await preferenceManager.getValue(preferenceManager.token);
    if (token != null && token.isNotEmpty) {
      Get.offAll(() => const MainPage());
    } else {
      Get.offAll(() => const ProjectLoginPage());
    }
  }

  Future<void> logout() async {
    await preferenceManager.removeToken();
    Get.offAll(() => const ProjectLoginPage());
  }
}
