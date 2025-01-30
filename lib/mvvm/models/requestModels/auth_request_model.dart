import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request_model.freezed.dart';
part 'auth_request_model.g.dart';

@freezed
class SignInRequestModel with _$SignInRequestModel {
  factory SignInRequestModel({
    required String email,
    required String password,
  }) = _SignInRequestModel;
  factory SignInRequestModel.fromJson(Map<String, Object?> json) =>
      _$SignInRequestModelFromJson(json);
}

@freezed
class SignUpRequestModel with _$SignUpRequestModel {
  factory SignUpRequestModel({
    required String name,
    required String email,
    required String password,
  }) = _SignUpRequestModel;
  factory SignUpRequestModel.fromJson(Map<String, Object?> json) =>
      _$SignUpRequestModelFromJson(json);
}
