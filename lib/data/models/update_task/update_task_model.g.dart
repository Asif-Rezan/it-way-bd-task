// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskModelImpl _$$UpdateTaskModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTaskModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      todo: json['todo'] as String? ?? '',
      completed: json['completed'] as bool? ?? false,
      userId: (json['userId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UpdateTaskModelImplToJson(
        _$UpdateTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
