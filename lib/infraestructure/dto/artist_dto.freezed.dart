// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArtistDto _$ArtistDtoFromJson(Map<String, dynamic> json) {
  return _ArtistTdo.fromJson(json);
}

/// @nodoc
class _$ArtistDtoTearOff {
  const _$ArtistDtoTearOff();

  _ArtistTdo call(
      {required String id, required String name, required String name2}) {
    return _ArtistTdo(
      id: id,
      name: name,
      name2: name2,
    );
  }

  ArtistDto fromJson(Map<String, Object?> json) {
    return ArtistDto.fromJson(json);
  }
}

/// @nodoc
const $ArtistDto = _$ArtistDtoTearOff();

/// @nodoc
mixin _$ArtistDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get name2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistDtoCopyWith<ArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistDtoCopyWith<$Res> {
  factory $ArtistDtoCopyWith(ArtistDto value, $Res Function(ArtistDto) then) =
      _$ArtistDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String name2});
}

/// @nodoc
class _$ArtistDtoCopyWithImpl<$Res> implements $ArtistDtoCopyWith<$Res> {
  _$ArtistDtoCopyWithImpl(this._value, this._then);

  final ArtistDto _value;
  // ignore: unused_field
  final $Res Function(ArtistDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name2 = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistTdoCopyWith<$Res> implements $ArtistDtoCopyWith<$Res> {
  factory _$ArtistTdoCopyWith(
          _ArtistTdo value, $Res Function(_ArtistTdo) then) =
      __$ArtistTdoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String name2});
}

/// @nodoc
class __$ArtistTdoCopyWithImpl<$Res> extends _$ArtistDtoCopyWithImpl<$Res>
    implements _$ArtistTdoCopyWith<$Res> {
  __$ArtistTdoCopyWithImpl(_ArtistTdo _value, $Res Function(_ArtistTdo) _then)
      : super(_value, (v) => _then(v as _ArtistTdo));

  @override
  _ArtistTdo get _value => super._value as _ArtistTdo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name2 = freezed,
  }) {
    return _then(_ArtistTdo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArtistTdo extends _ArtistTdo {
  const _$_ArtistTdo(
      {required this.id, required this.name, required this.name2})
      : super._();

  factory _$_ArtistTdo.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistTdoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String name2;

  @override
  String toString() {
    return 'ArtistDto(id: $id, name: $name, name2: $name2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtistTdo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.name2, name2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(name2));

  @JsonKey(ignore: true)
  @override
  _$ArtistTdoCopyWith<_ArtistTdo> get copyWith =>
      __$ArtistTdoCopyWithImpl<_ArtistTdo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistTdoToJson(this);
  }
}

abstract class _ArtistTdo extends ArtistDto {
  const factory _ArtistTdo(
      {required String id,
      required String name,
      required String name2}) = _$_ArtistTdo;
  const _ArtistTdo._() : super._();

  factory _ArtistTdo.fromJson(Map<String, dynamic> json) =
      _$_ArtistTdo.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get name2;
  @override
  @JsonKey(ignore: true)
  _$ArtistTdoCopyWith<_ArtistTdo> get copyWith =>
      throw _privateConstructorUsedError;
}
