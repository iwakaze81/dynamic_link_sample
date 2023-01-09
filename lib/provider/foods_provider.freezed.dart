// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foods_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodsState {
  List<Food> get foods => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodsStateCopyWith<FoodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodsStateCopyWith<$Res> {
  factory $FoodsStateCopyWith(
          FoodsState value, $Res Function(FoodsState) then) =
      _$FoodsStateCopyWithImpl<$Res, FoodsState>;
  @useResult
  $Res call({List<Food> foods});
}

/// @nodoc
class _$FoodsStateCopyWithImpl<$Res, $Val extends FoodsState>
    implements $FoodsStateCopyWith<$Res> {
  _$FoodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodsStateCopyWith<$Res>
    implements $FoodsStateCopyWith<$Res> {
  factory _$$_FoodsStateCopyWith(
          _$_FoodsState value, $Res Function(_$_FoodsState) then) =
      __$$_FoodsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Food> foods});
}

/// @nodoc
class __$$_FoodsStateCopyWithImpl<$Res>
    extends _$FoodsStateCopyWithImpl<$Res, _$_FoodsState>
    implements _$$_FoodsStateCopyWith<$Res> {
  __$$_FoodsStateCopyWithImpl(
      _$_FoodsState _value, $Res Function(_$_FoodsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
  }) {
    return _then(_$_FoodsState(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>,
    ));
  }
}

/// @nodoc

class _$_FoodsState implements _FoodsState {
  _$_FoodsState({final List<Food> foods = const <Food>[]}) : _foods = foods;

  final List<Food> _foods;
  @override
  @JsonKey()
  List<Food> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  @override
  String toString() {
    return 'FoodsState(foods: $foods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodsState &&
            const DeepCollectionEquality().equals(other._foods, _foods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_foods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodsStateCopyWith<_$_FoodsState> get copyWith =>
      __$$_FoodsStateCopyWithImpl<_$_FoodsState>(this, _$identity);
}

abstract class _FoodsState implements FoodsState {
  factory _FoodsState({final List<Food> foods}) = _$_FoodsState;

  @override
  List<Food> get foods;
  @override
  @JsonKey(ignore: true)
  _$$_FoodsStateCopyWith<_$_FoodsState> get copyWith =>
      throw _privateConstructorUsedError;
}
