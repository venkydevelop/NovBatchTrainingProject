import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
class UserDataModel with _$UserDataModel {
  factory UserDataModel(
      {String? name, String? image, String? course, int? fee}) = _UserDataModel;
  factory UserDataModel.fromJson(Map<String, Object?> json) =>
      _$UserDataModelFromJson(json);
}

@freezed
class ProductDataModel with _$ProductDataModel {
  factory ProductDataModel(
      {int? id,
      String? name,
      String? description,
      int? price}) = _ProductDataModel;
  factory ProductDataModel.fromJson(Map<String, Object?> json) =>
      _$ProductDataModelFromJson(json);
}

@freezed
class SingleObjectModel with _$SingleObjectModel {
  factory SingleObjectModel({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _SingleObjectModel;
  factory SingleObjectModel.fromJson(Map<String, Object?> json) =>
      _$SingleObjectModelFromJson(json);
}

@freezed
class UserResponseModel with _$UserResponseModel {
  factory UserResponseModel(
      {int? page,
      @JsonKey(name: "per_page") int? perPage,
      int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      String? body,
      List<UserDataModelResponse>? data}) = _UserResponseModel;
  factory UserResponseModel.fromJson(Map<String, Object?> json) =>
      _$UserResponseModelFromJson(json);
}

@freezed
class UserDataModelResponse with _$UserDataModelResponse {
  factory UserDataModelResponse({
    int? id,
    String? email,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    String? avatar,
  }) = _UserDataModelResponse;
  factory UserDataModelResponse.fromJson(Map<String, Object?> json) =>
      _$UserDataModelResponseFromJson(json);
}

@freezed
class FirebaseDataModel with _$FirebaseDataModel {
  factory FirebaseDataModel({
    String? uid,
    String? name,
    String? email,
  }) = _FirebaseDataModel;
  factory FirebaseDataModel.fromJson(Map<String, Object?> json) =>
      _$FirebaseDataModelFromJson(json);
}
