// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtistTearOff {
  const _$ArtistTearOff();

  _Artist call(
      {required VoUniqueId id,
      required VoNameExemple name,
      required VoNameExemple name2}) {
    return _Artist(
      id: id,
      name: name,
      name2: name2,
    );
  }
}

/// @nodoc
const $Artist = _$ArtistTearOff();

/// @nodoc
mixin _$Artist {
  VoUniqueId get id => throw _privateConstructorUsedError;
  VoNameExemple get name => throw _privateConstructorUsedError;
  VoNameExemple get name2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res>;
  $Res call({VoUniqueId id, VoNameExemple name, VoNameExemple name2});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res> implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  final Artist _value;
  // ignore: unused_field
  final $Res Function(Artist) _then;

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
              as VoUniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VoNameExemple,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as VoNameExemple,
    ));
  }
}

/// @nodoc
abstract class _$ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$ArtistCopyWith(_Artist value, $Res Function(_Artist) then) =
      __$ArtistCopyWithImpl<$Res>;
  @override
  $Res call({VoUniqueId id, VoNameExemple name, VoNameExemple name2});
}

/// @nodoc
class __$ArtistCopyWithImpl<$Res> extends _$ArtistCopyWithImpl<$Res>
    implements _$ArtistCopyWith<$Res> {
  __$ArtistCopyWithImpl(_Artist _value, $Res Function(_Artist) _then)
      : super(_value, (v) => _then(v as _Artist));

  @override
  _Artist get _value => super._value as _Artist;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name2 = freezed,
  }) {
    return _then(_Artist(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VoUniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as VoNameExemple,
      name2: name2 == freezed
          ? _value.name2
          : name2 // ignore: cast_nullable_to_non_nullable
              as VoNameExemple,
    ));
  }
}

/// @nodoc

class _$_Artist extends _Artist {
  const _$_Artist({required this.id, required this.name, required this.name2})
      : super._();

  @override
  final VoUniqueId id;
  @override
  final VoNameExemple name;
  @override
  final VoNameExemple name2;

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, name2: $name2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Artist &&
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
  _$ArtistCopyWith<_Artist> get copyWith =>
      __$ArtistCopyWithImpl<_Artist>(this, _$identity);
}

abstract class _Artist extends Artist {
  const factory _Artist(
      {required VoUniqueId id,
      required VoNameExemple name,
      required VoNameExemple name2}) = _$_Artist;
  const _Artist._() : super._();

  @override
  VoUniqueId get id;
  @override
  VoNameExemple get name;
  @override
  VoNameExemple get name2;
  @override
  @JsonKey(ignore: true)
  _$ArtistCopyWith<_Artist> get copyWith => throw _privateConstructorUsedError;
}
