// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_exemple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntityExempleTearOff {
  const _$EntityExempleTearOff();

  _EntityExemple call({required VVOExemple name, required VVOExemple name2}) {
    return _EntityExemple(
      name: name,
      name2: name2,
    );
  }
}

/// @nodoc
const $EntityExemple = _$EntityExempleTearOff();

/// @nodoc
mixin _$EntityExemple {
  VVOExemple get name => throw _privateConstructorUsedError;
  VVOExemple get name2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityExempleCopyWith<EntityExemple> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityExempleCopyWith<$Res> {
  factory $EntityExempleCopyWith(
          EntityExemple value, $Res Function(EntityExemple) then) =
      _$EntityExempleCopyWithImpl<$Res>;
  $Res call({VVOExemple name, VVOExemple name2});
}

/// @nodoc
class _$EntityExempleCopyWithImpl<$Res>
    implements $EntityExempleCopyWith<$Res> {
  _$EntityExempleCopyWithImpl(this._value, this._then);

  final EntityExemple _value;
  // ignore: unused_field
  final $Res Function(EntityExemple) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? name2 = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VVOExemple,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as VVOExemple,
    ));
  }
}

/// @nodoc
abstract class _$EntityExempleCopyWith<$Res>
    implements $EntityExempleCopyWith<$Res> {
  factory _$EntityExempleCopyWith(
          _EntityExemple value, $Res Function(_EntityExemple) then) =
      __$EntityExempleCopyWithImpl<$Res>;
  @override
  $Res call({VVOExemple name, VVOExemple name2});
}

/// @nodoc
class __$EntityExempleCopyWithImpl<$Res>
    extends _$EntityExempleCopyWithImpl<$Res>
    implements _$EntityExempleCopyWith<$Res> {
  __$EntityExempleCopyWithImpl(
      _EntityExemple _value, $Res Function(_EntityExemple) _then)
      : super(_value, (v) => _then(v as _EntityExemple));

  @override
  _EntityExemple get _value => super._value as _EntityExemple;

  @override
  $Res call({
    Object? name = freezed,
    Object? name2 = freezed,
  }) {
    return _then(_EntityExemple(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VVOExemple,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as VVOExemple,
    ));
  }
}

/// @nodoc

class _$_EntityExemple extends _EntityExemple {
  const _$_EntityExemple({required this.name, required this.name2}) : super._();

  @override
  final VVOExemple name;
  @override
  final VVOExemple name2;

  @override
  String toString() {
    return 'EntityExemple(name: $name, name2: $name2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityExemple &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.name2, name2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(name2));

  @JsonKey(ignore: true)
  @override
  _$EntityExempleCopyWith<_EntityExemple> get copyWith =>
      __$EntityExempleCopyWithImpl<_EntityExemple>(this, _$identity);
}

abstract class _EntityExemple extends EntityExemple {
  const factory _EntityExemple(
      {required VVOExemple name, required VVOExemple name2}) = _$_EntityExemple;
  const _EntityExemple._() : super._();

  @override
  VVOExemple get name;
  @override
  VVOExemple get name2;
  @override
  @JsonKey(ignore: true)
  _$EntityExempleCopyWith<_EntityExemple> get copyWith =>
      throw _privateConstructorUsedError;
}
