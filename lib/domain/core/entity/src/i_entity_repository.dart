import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures/entity_failure.dart';

abstract class IEntityRepository<T> {
  Future<Either<EntityFailure, Unit>> create(T ent);
  Future<Either<EntityFailure, Unit>> update(T ent);
  Future<Either<EntityFailure, Unit>> delete(T ent);
  Stream<Either<EntityFailure, KtList<T>>> watchAll();
  Stream<Either<EntityFailure, KtList<T>>> watchRegard(
      {required bool Function(T) fun});
}
