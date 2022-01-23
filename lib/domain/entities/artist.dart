import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//
import 'package:muzeek/domain/core/vvo/validated_value_object.dart';
import 'package:muzeek/domain/vvos/vo_name_exemple.dart';
import 'package:muzeek/domain/vvos/vo_unique_id.dart';
//
part 'artist.freezed.dart';

@freezed
abstract class Artist implements _$Artist {
  const Artist._();

  const factory Artist({
    required VoUniqueId id,
    required VoNameExemple name,
    required VoNameExemple name2,
  }) = _Artist;

  Option<List<ValueFailure<dynamic>>> get failureOption {
    var failures = <ValueFailure<dynamic>>[];
    failures.addAll(name.failures);
    failures.addAll(name2.failures);
    return failures.isEmpty ? none() : some(failures);
  }
}
