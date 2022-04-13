import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_model.freezed.dart';
part 'agent_model.g.dart';

@freezed
class AgentModel with _$AgentModel{
  @JsonSerializable(explicitToJson: true)
  factory AgentModel({
    required String id,
    required String name,
    required String image,
  }) = _AgentModel;


  factory AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);
}