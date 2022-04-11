import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//
import 'package:muzeek/domain/core/vvo/src/vvo_exemple.dart';
import 'package:muzeek/domain/core/vvo/src/failures/value_failure.dart';
//
part 'entity_exemple.freezed.dart';

@freezed
abstract class EntityExemple implements _$EntityExemple {
  const EntityExemple._();

  const factory EntityExemple({
    required VVOExemple name,
    required VVOExemple name2,
  }) = _EntityExemple;

  Option<List<ValueFailure<dynamic>>> get failureOption {
    var failures = <ValueFailure<dynamic>>[];
    failures.addAll(name.failures);
    failures.addAll(name2.failures);
    return failures.isEmpty ? none() : some(failures);
  }
}
