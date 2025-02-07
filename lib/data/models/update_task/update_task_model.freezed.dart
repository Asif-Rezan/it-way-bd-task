// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTaskModel _$UpdateTaskModelFromJson(Map<String, dynamic> json) {
  return _UpdateTaskModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'todo')
  String get todo => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskModelCopyWith<UpdateTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskModelCopyWith<$Res> {
  factory $UpdateTaskModelCopyWith(
          UpdateTaskModel value, $Res Function(UpdateTaskModel) then) =
      _$UpdateTaskModelCopyWithImpl<$Res, UpdateTaskModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'todo') String todo,
      @JsonKey(name: 'completed') bool completed,
      @JsonKey(name: 'userId') int userId});
}

/// @nodoc
class _$UpdateTaskModelCopyWithImpl<$Res, $Val extends UpdateTaskModel>
    implements $UpdateTaskModelCopyWith<$Res> {
  _$UpdateTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskModel
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
abstract class _$$UpdateTaskModelImplCopyWith<$Res>
    implements $UpdateTaskModelCopyWith<$Res> {
  factory _$$UpdateTaskModelImplCopyWith(_$UpdateTaskModelImpl value,
          $Res Function(_$UpdateTaskModelImpl) then) =
      __$$UpdateTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'todo') String todo,
      @JsonKey(name: 'completed') bool completed,
      @JsonKey(name: 'userId') int userId});
}

/// @nodoc
class __$$UpdateTaskModelImplCopyWithImpl<$Res>
    extends _$UpdateTaskModelCopyWithImpl<$Res, _$UpdateTaskModelImpl>
    implements _$$UpdateTaskModelImplCopyWith<$Res> {
  __$$UpdateTaskModelImplCopyWithImpl(
      _$UpdateTaskModelImpl _value, $Res Function(_$UpdateTaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$UpdateTaskModelImpl(
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
class _$UpdateTaskModelImpl implements _UpdateTaskModel {
  const _$UpdateTaskModelImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'todo') this.todo = '',
      @JsonKey(name: 'completed') this.completed = false,
      @JsonKey(name: 'userId') this.userId = 0});

  factory _$UpdateTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskModelImplFromJson(json);

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
    return 'UpdateTaskModel(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, todo, completed, userId);

  /// Create a copy of UpdateTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskModelImplCopyWith<_$UpdateTaskModelImpl> get copyWith =>
      __$$UpdateTaskModelImplCopyWithImpl<_$UpdateTaskModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskModel implements UpdateTaskModel {
  const factory _UpdateTaskModel(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'todo') final String todo,
      @JsonKey(name: 'completed') final bool completed,
      @JsonKey(name: 'userId') final int userId}) = _$UpdateTaskModelImpl;

  factory _UpdateTaskModel.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskModelImpl.fromJson;

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

  /// Create a copy of UpdateTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskModelImplCopyWith<_$UpdateTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
