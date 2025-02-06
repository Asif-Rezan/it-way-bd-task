import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_model.g.dart';
part 'add_task_model.freezed.dart';

@freezed
class AddTaskModel with _$AddTaskModel {
  const factory AddTaskModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'todo') required String todo,
    @JsonKey(name: 'completed') required bool completed,
    @JsonKey(name: 'userId') required int userId,
  }) = _AddTaskModel;

  factory AddTaskModel.fromJson(Map<String, dynamic> json) => _$AddTaskModelFromJson(json);
}
