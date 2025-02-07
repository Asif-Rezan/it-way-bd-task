import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_model.g.dart';
part 'update_task_model.freezed.dart';

@freezed
class UpdateTaskModel with _$UpdateTaskModel {
  const factory UpdateTaskModel({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'todo') String todo,
    @Default(false) @JsonKey(name: 'completed') bool completed,
    @Default(0) @JsonKey(name: 'userId') int userId,
  }) = _UpdateTaskModel;

  factory UpdateTaskModel.fromJson(Map<String, dynamic> json) => _$UpdateTaskModelFromJson(json);
}
