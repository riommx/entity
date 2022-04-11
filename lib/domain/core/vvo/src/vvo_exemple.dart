import 'package:dartz/dartz.dart';
//
import 'value_object.dart';
import 'validation/constrains_enums.dart';
import 'validation/string_vo_validator.dart';
import 'failures/value_failure.dart';

//import '../validated_value_object.dart';

//
// #############################################################################
// #  Ver: 1.0 - last: 11/04/22
// #  Nullsafety
// #  Exemple of how to create a String Validated Value Object
// #############################################################################
class VVOExemple extends ValueObject<String> {
  //
  // ===========================================================================
  VVOExemple._(Either<List<ValueFailure<String>>, String> value) : super(value);
  //
  // ===========================================================================
  factory VVOExemple({required String value}) {
    //
    final constrains = {
      StringConstrains.maxLength: 4,
      StringConstrains.singleLine: null,
      StringConstrains.otherValidation: {
        'function': (v) => v == 'Sid',
        'message': 'Nome precisa ser Sid',
      },
      StringConstrains.regex: RegExp(r'^[a-zA-Z]+$'),
    };
    //
    var validator = StringVOValidator(constrains: constrains);
    //
    var failures = validator.validate(value: value);
    //
    if (failures.isEmpty) return VVOExemple._(right(value));
    //
    return VVOExemple._(left(failures));
  }
}
// ******************************************************************
// *    _____   _   _____      _______   ______    _____   _    _
// *   / ____| | | |  __ \    |__   __| |  ____|  / ____| | |  | |
// *  | (___   | | | |  | |      | |    | |__    | |      | |__| |
// *   \___ \  | | | |  | |      | |    |  __|   | |      |  __  |
// *   ____) | |_| | |__| |      | |    | |____  | |____  | |  | |
// *  |_____/  (_) |_____/       |_|    |______|  \_____| |_|  |_|
// *
// *  ┈┈┈╭━━╮┈┈┈┈┈┈
// *  ┈┈╭╯┊◣╰━━━━╮┈┈
// *  ┈┈┃┊┊┊╱▽▽▽┛┈┈  -< Designed by Sedinir Consentini @ MMXXII >-
// *  ┈┈┃┊┊┊~~~   ┈┈┈┈        -< Rio de Janeiro - Brazil >-
// *  ━━╯┊┊┊╲△△△┓┈┈
// *  ┊┊┊┊╭━━━━━━╯┈┈   --->  May the source be with you!  <---
// *
// ******************************************************************