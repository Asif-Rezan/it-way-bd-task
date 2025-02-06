// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTaskModelImpl _$$AddTaskModelImplFromJson(Map<String, dynamic> json) =>
    _$AddTaskModelImpl(
      id: (json['id'] as num).toInt(),
      todo: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$AddTaskModelImplToJson(_$AddTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
