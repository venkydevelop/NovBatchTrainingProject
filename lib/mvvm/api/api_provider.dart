import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:nov_training_session/mvvm/extensions/preference_manager.dart';

class ApiProvider<T> extends GetConnect {
  String apikey = '123456';
  String apiBaseUrl = 'https://venkateshservices-a387e.el.r.appspot.com/user/';
  String token = "";

  @override
  void onInit() {
    httpClient.baseUrl = apiBaseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.timeout = const Duration(seconds: 25);
    httpClient.addRequestModifier<T>((request) async {
      final preferenceManager = Get.find<PreferenceManager>();
      token = await preferenceManager.getValue(preferenceManager.token) ?? "";
      final modifiedRequest = request as Request<T>;
      modifiedRequest.headers["Authorization"] = token;
      modifiedRequest.headers["Apikey"] = apikey;
      return modifiedRequest;
    });
    super.onInit();
  }
}
