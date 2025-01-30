// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) {
  return _SignInResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SignInDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseModelCopyWith<SignInResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseModelCopyWith<$Res> {
  factory $SignInResponseModelCopyWith(
          SignInResponseModel value, $Res Function(SignInResponseModel) then) =
      _$SignInResponseModelCopyWithImpl<$Res, SignInResponseModel>;
  @useResult
  $Res call({int? status, String? message, SignInDataModel? data});

  $SignInDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignInResponseModelCopyWithImpl<$Res, $Val extends SignInResponseModel>
    implements $SignInResponseModelCopyWith<$Res> {
  _$SignInResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SignInDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResponseModelImplCopyWith<$Res>
    implements $SignInResponseModelCopyWith<$Res> {
  factory _$$SignInResponseModelImplCopyWith(_$SignInResponseModelImpl value,
          $Res Function(_$SignInResponseModelImpl) then) =
      __$$SignInResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SignInDataModel? data});

  @override
  $SignInDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SignInResponseModelImplCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$SignInResponseModelImpl>
    implements _$$SignInResponseModelImplCopyWith<$Res> {
  __$$SignInResponseModelImplCopyWithImpl(_$SignInResponseModelImpl _value,
      $Res Function(_$SignInResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SignInResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseModelImpl implements _SignInResponseModel {
  _$SignInResponseModelImpl({this.status, this.message, this.data});

  factory _$SignInResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SignInDataModel? data;

  @override
  String toString() {
    return 'SignInResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      __$$SignInResponseModelImplCopyWithImpl<_$SignInResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseModel implements SignInResponseModel {
  factory _SignInResponseModel(
      {final int? status,
      final String? message,
      final SignInDataModel? data}) = _$SignInResponseModelImpl;

  factory _SignInResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignInResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SignInDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInDataModel _$SignInDataModelFromJson(Map<String, dynamic> json) {
  return _SignInDataModel.fromJson(json);
}

/// @nodoc
mixin _$SignInDataModel {
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInDataModelCopyWith<SignInDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataModelCopyWith<$Res> {
  factory $SignInDataModelCopyWith(
          SignInDataModel value, $Res Function(SignInDataModel) then) =
      _$SignInDataModelCopyWithImpl<$Res, SignInDataModel>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$SignInDataModelCopyWithImpl<$Res, $Val extends SignInDataModel>
    implements $SignInDataModelCopyWith<$Res> {
  _$SignInDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDataModelImplCopyWith<$Res>
    implements $SignInDataModelCopyWith<$Res> {
  factory _$$SignInDataModelImplCopyWith(_$SignInDataModelImpl value,
          $Res Function(_$SignInDataModelImpl) then) =
      __$$SignInDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$SignInDataModelImplCopyWithImpl<$Res>
    extends _$SignInDataModelCopyWithImpl<$Res, _$SignInDataModelImpl>
    implements _$$SignInDataModelImplCopyWith<$Res> {
  __$$SignInDataModelImplCopyWithImpl(
      _$SignInDataModelImpl _value, $Res Function(_$SignInDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$SignInDataModelImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDataModelImpl implements _SignInDataModel {
  _$SignInDataModelImpl({this.token});

  factory _$SignInDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataModelImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'SignInDataModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDataModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDataModelImplCopyWith<_$SignInDataModelImpl> get copyWith =>
      __$$SignInDataModelImplCopyWithImpl<_$SignInDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDataModelImplToJson(
      this,
    );
  }
}

abstract class _SignInDataModel implements SignInDataModel {
  factory _SignInDataModel({final String? token}) = _$SignInDataModelImpl;

  factory _SignInDataModel.fromJson(Map<String, dynamic> json) =
      _$SignInDataModelImpl.fromJson;

  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$SignInDataModelImplCopyWith<_$SignInDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileResponseModel _$UserProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserProfileDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseModelCopyWith<UserProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseModelCopyWith<$Res> {
  factory $UserProfileResponseModelCopyWith(UserProfileResponseModel value,
          $Res Function(UserProfileResponseModel) then) =
      _$UserProfileResponseModelCopyWithImpl<$Res, UserProfileResponseModel>;
  @useResult
  $Res call({int? status, String? message, UserProfileDataModel? data});

  $UserProfileDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileResponseModelCopyWithImpl<$Res,
        $Val extends UserProfileResponseModel>
    implements $UserProfileResponseModelCopyWith<$Res> {
  _$UserProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserProfileDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseModelImplCopyWith<$Res>
    implements $UserProfileResponseModelCopyWith<$Res> {
  factory _$$UserProfileResponseModelImplCopyWith(
          _$UserProfileResponseModelImpl value,
          $Res Function(_$UserProfileResponseModelImpl) then) =
      __$$UserProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, UserProfileDataModel? data});

  @override
  $UserProfileDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserProfileResponseModelImplCopyWithImpl<$Res>
    extends _$UserProfileResponseModelCopyWithImpl<$Res,
        _$UserProfileResponseModelImpl>
    implements _$$UserProfileResponseModelImplCopyWith<$Res> {
  __$$UserProfileResponseModelImplCopyWithImpl(
      _$UserProfileResponseModelImpl _value,
      $Res Function(_$UserProfileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserProfileResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseModelImpl implements _UserProfileResponseModel {
  _$UserProfileResponseModelImpl({this.status, this.message, this.data});

  factory _$UserProfileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final UserProfileDataModel? data;

  @override
  String toString() {
    return 'UserProfileResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseModelImplCopyWith<_$UserProfileResponseModelImpl>
      get copyWith => __$$UserProfileResponseModelImplCopyWithImpl<
          _$UserProfileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponseModel implements UserProfileResponseModel {
  factory _UserProfileResponseModel(
      {final int? status,
      final String? message,
      final UserProfileDataModel? data}) = _$UserProfileResponseModelImpl;

  factory _UserProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  UserProfileDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileResponseModelImplCopyWith<_$UserProfileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserProfileDataModel _$UserProfileDataModelFromJson(Map<String, dynamic> json) {
  return _UserProfileDataModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileDataModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDataModelCopyWith<UserProfileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataModelCopyWith<$Res> {
  factory $UserProfileDataModelCopyWith(UserProfileDataModel value,
          $Res Function(UserProfileDataModel) then) =
      _$UserProfileDataModelCopyWithImpl<$Res, UserProfileDataModel>;
  @useResult
  $Res call({@JsonKey(name: "_id") String? id, String? name, String? email});
}

/// @nodoc
class _$UserProfileDataModelCopyWithImpl<$Res,
        $Val extends UserProfileDataModel>
    implements $UserProfileDataModelCopyWith<$Res> {
  _$UserProfileDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileDataModelImplCopyWith<$Res>
    implements $UserProfileDataModelCopyWith<$Res> {
  factory _$$UserProfileDataModelImplCopyWith(_$UserProfileDataModelImpl value,
          $Res Function(_$UserProfileDataModelImpl) then) =
      __$$UserProfileDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "_id") String? id, String? name, String? email});
}

/// @nodoc
class __$$UserProfileDataModelImplCopyWithImpl<$Res>
    extends _$UserProfileDataModelCopyWithImpl<$Res, _$UserProfileDataModelImpl>
    implements _$$UserProfileDataModelImplCopyWith<$Res> {
  __$$UserProfileDataModelImplCopyWithImpl(_$UserProfileDataModelImpl _value,
      $Res Function(_$UserProfileDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserProfileDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataModelImpl implements _UserProfileDataModel {
  _$UserProfileDataModelImpl(
      {@JsonKey(name: "_id") this.id, this.name, this.email});

  factory _$UserProfileDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserProfileDataModel(id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataModelImplCopyWith<_$UserProfileDataModelImpl>
      get copyWith =>
          __$$UserProfileDataModelImplCopyWithImpl<_$UserProfileDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileDataModel implements UserProfileDataModel {
  factory _UserProfileDataModel(
      {@JsonKey(name: "_id") final String? id,
      final String? name,
      final String? email}) = _$UserProfileDataModelImpl;

  factory _UserProfileDataModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileDataModelImplCopyWith<_$UserProfileDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchUserResponseModel _$FetchUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FecthUserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchUserResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserProfileDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchUserResponseModelCopyWith<FetchUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserResponseModelCopyWith<$Res> {
  factory $FetchUserResponseModelCopyWith(FetchUserResponseModel value,
          $Res Function(FetchUserResponseModel) then) =
      _$FetchUserResponseModelCopyWithImpl<$Res, FetchUserResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<UserProfileDataModel>? data});
}

/// @nodoc
class _$FetchUserResponseModelCopyWithImpl<$Res,
        $Val extends FetchUserResponseModel>
    implements $FetchUserResponseModelCopyWith<$Res> {
  _$FetchUserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProfileDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FecthUserResponseModelImplCopyWith<$Res>
    implements $FetchUserResponseModelCopyWith<$Res> {
  factory _$$FecthUserResponseModelImplCopyWith(
          _$FecthUserResponseModelImpl value,
          $Res Function(_$FecthUserResponseModelImpl) then) =
      __$$FecthUserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<UserProfileDataModel>? data});
}

/// @nodoc
class __$$FecthUserResponseModelImplCopyWithImpl<$Res>
    extends _$FetchUserResponseModelCopyWithImpl<$Res,
        _$FecthUserResponseModelImpl>
    implements _$$FecthUserResponseModelImplCopyWith<$Res> {
  __$$FecthUserResponseModelImplCopyWithImpl(
      _$FecthUserResponseModelImpl _value,
      $Res Function(_$FecthUserResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FecthUserResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserProfileDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FecthUserResponseModelImpl implements _FecthUserResponseModel {
  _$FecthUserResponseModelImpl(
      {this.status, this.message, final List<UserProfileDataModel>? data})
      : _data = data;

  factory _$FecthUserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FecthUserResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<UserProfileDataModel>? _data;
  @override
  List<UserProfileDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchUserResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FecthUserResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FecthUserResponseModelImplCopyWith<_$FecthUserResponseModelImpl>
      get copyWith => __$$FecthUserResponseModelImplCopyWithImpl<
          _$FecthUserResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FecthUserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FecthUserResponseModel implements FetchUserResponseModel {
  factory _FecthUserResponseModel(
      {final int? status,
      final String? message,
      final List<UserProfileDataModel>? data}) = _$FecthUserResponseModelImpl;

  factory _FecthUserResponseModel.fromJson(Map<String, dynamic> json) =
      _$FecthUserResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<UserProfileDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FecthUserResponseModelImplCopyWith<_$FecthUserResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
