import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phone") required String phone,
  }) = _UserModel;


  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}