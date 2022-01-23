import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';
//
import 'package:muzeek/domain/core/vvo/validated_value_object.dart';

// #############################################################################
// #  Ver: 1.0 - last: 12/01/22
// #  Nullsafety
// #  Exemple of how to create a String Validated Value Object
// #############################################################################
class VoUniqueId extends ValueObject<String> {
  //
  // ===========================================================================
  VoUniqueId._(Either<List<ValueFailure<String>>, String> value) : super(value);
  //
  // ===========================================================================
  factory VoUniqueId() {
    return VoUniqueId._(
      right(Uuid().v1()),
    );
  }
  //
  // ===========================================================================
  factory VoUniqueId.fromUniqueString({required String uniqueId}) {
    return VoUniqueId._(
      right(uniqueId),
    );
  }
}
