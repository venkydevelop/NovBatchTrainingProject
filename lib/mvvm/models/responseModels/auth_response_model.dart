import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class SignInResponseModel with _$SignInResponseModel {
  factory SignInResponseModel(
      {int? status,
      String? message,
      SignInDataModel? data}) = _SignInResponseModel;
  factory SignInResponseModel.fromJson(Map<String, Object?> json) =>
      _$SignInResponseModelFromJson(json);
}

@freezed
class SignInDataModel with _$SignInDataModel {
  factory SignInDataModel({
    String? token,
  }) = _SignInDataModel;
  factory SignInDataModel.fromJson(Map<String, Object?> json) =>
      _$SignInDataModelFromJson(json);
}

@freezed
class UserProfileResponseModel with _$UserProfileResponseModel {
  factory UserProfileResponseModel({
    int? status,
    String? message,
    UserProfileDataModel? data,
  }) = _UserProfileResponseModel;
  factory UserProfileResponseModel.fromJson(Map<String, Object?> json) =>
      _$UserProfileResponseModelFromJson(json);
}

@freezed
class UserProfileDataModel with _$UserProfileDataModel {
  factory UserProfileDataModel({
    @JsonKey(name: "_id") String? id,
    String? name,
    String? email,
  }) = _UserProfileDataModel;
  factory UserProfileDataModel.fromJson(Map<String, Object?> json) =>
      _$UserProfileDataModelFromJson(json);
}

@freezed
class FetchUserResponseModel with _$FetchUserResponseModel {
  factory FetchUserResponseModel({
    int? status,
    String? message,
    List<UserProfileDataModel>? data,
  }) = _FecthUserResponseModel;
  factory FetchUserResponseModel.fromJson(Map<String, Object?> json) =>
      _$FetchUserResponseModelFromJson(json);
}
