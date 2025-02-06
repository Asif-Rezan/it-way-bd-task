// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTaskModel _$AddTaskModelFromJson(Map<String, dynamic> json) {
  return _AddTaskModel.fromJson(json);
}

/// @nodoc
mixin _$AddTaskModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'todo')
  String get todo => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this AddTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddTaskModelCopyWith<AddTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskModelCopyWith<$Res> {
  factory $AddTaskModelCopyWith(
          AddTaskModel value, $Res Function(AddTaskModel) then) =
      _$AddTaskModelCopyWithImpl<$Res, AddTaskModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'todo') String todo,
      @JsonKey(name: 'completed') bool completed,
      @JsonKey(name: 'userId') int userId});
}

/// @nodoc
class _$AddTaskModelCopyWithImpl<$Res, $Val extends AddTaskModel>
    implements $AddTaskModelCopyWith<$Res> {
  _$AddTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTaskModelImplCopyWith<$Res>
    implements $AddTaskModelCopyWith<$Res> {
  factory _$$AddTaskModelImplCopyWith(
          _$AddTaskModelImpl value, $Res Function(_$AddTaskModelImpl) then) =
      __$$AddTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'todo') String todo,
      @JsonKey(name: 'completed') bool completed,
      @JsonKey(name: 'userId') int userId});
}

/// @nodoc
class __$$AddTaskModelImplCopyWithImpl<$Res>
    extends _$AddTaskModelCopyWithImpl<$Res, _$AddTaskModelImpl>
    implements _$$AddTaskModelImplCopyWith<$Res> {
  __$$AddTaskModelImplCopyWithImpl(
      _$AddTaskModelImpl _value, $Res Function(_$AddTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$AddTaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTaskModelImpl implements _AddTaskModel {
  const _$AddTaskModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'todo') required this.todo,
      @JsonKey(name: 'completed') required this.completed,
      @JsonKey(name: 'userId') required this.userId});

  factory _$AddTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTaskModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'todo')
  final String todo;
  @override
  @JsonKey(name: 'completed')
  final bool completed;
  @override
  @JsonKey(name: 'userId')
  final int userId;

  @override
  String toString() {
    return 'AddTaskModel(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, todo, completed, userId);

  /// Create a copy of AddTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskModelImplCopyWith<_$AddTaskModelImpl> get copyWith =>
      __$$AddTaskModelImplCopyWithImpl<_$AddTaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTaskModelImplToJson(
      this,
    );
  }
}

abstract class _AddTaskModel implements AddTaskModel {
  const factory _AddTaskModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'todo') required final String todo,
      @JsonKey(name: 'completed') required final bool completed,
      @JsonKey(name: 'userId') required final int userId}) = _$AddTaskModelImpl;

  factory _AddTaskModel.fromJson(Map<String, dynamic> json) =
      _$AddTaskModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'todo')
  String get todo;
  @override
  @JsonKey(name: 'completed')
  bool get completed;
  @override
  @JsonKey(name: 'userId')
  int get userId;

  /// Create a copy of AddTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTaskModelImplCopyWith<_$AddTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
