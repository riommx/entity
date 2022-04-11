import 'i_string_validator.dart';
import 'string_validator.dart';
import 'constrains_enums.dart';
import '../failures/value_failure.dart';

// #############################################################################
// #  Ver: 1.0 - last: 11/04/22
// #  Null safety
// #  Validate a String VVO and return a ValueFailures List or the Right value
// #############################################################################
//
class StringVOValidator {
  // ================================
  final IStringValidator _validator = StringValidator();

  // ================================
  final Map<StringConstrains, dynamic> _constrains;

  // ================================
  StringVOValidator._(this._constrains);

  // ================================
  factory StringVOValidator(
      {required Map<StringConstrains, dynamic> constrains}) {
    // validate the constrains MAX Length
    if (constrains.containsKey(StringConstrains.maxLength)) {
      constrains[StringConstrains.maxLength] =
          constrains[StringConstrains.maxLength] < 0
              ? 0
              : constrains[StringConstrains.maxLength];
    }
    // validate the constrains MIN Length
    if (constrains.containsKey(StringConstrains.minLength)) {
      constrains[StringConstrains.minLength] =
          constrains[StringConstrains.minLength] < 0
              ? 0
              : constrains[StringConstrains.minLength];
    }
    //
    return StringVOValidator._(constrains);
  }

  // ================================
  List<ValueFailure<String>> validate({required String value}) {
    //
    final failures = <ValueFailure<String>>[];
    //
    _constrains.forEach((constrain, v) {
      //
      switch (constrain) {
        //
        case StringConstrains.dateTime:
          if (!_validator.dateTime(value: value)) {
            failures.add(ValueFailure.invalidDateTime(failedValue: value));
          }
          break;
        //
        case StringConstrains.maxLength:
          if (!_validator.maxLength(value: value, max: v)) {
            failures.add(ValueFailure.exceedingLength(
                failedValue: value, length: value.length, maxLength: v));
          }
          break;
        //
        case StringConstrains.minLength:
          if (!_validator.minLength(value: value, min: v)) {
            failures.add(ValueFailure.shortLength(
                failedValue: value, length: value.length, minLength: v));
          }
          break;
        //
        case StringConstrains.notEmpty:
          if (!_validator.notEmpty(value: value)) {
            failures.add(ValueFailure.empty(failedValue: value));
          }
          break;
        //
        case StringConstrains.otherValidation:
          if (!_validator.otherValidation(value: value, fun: v['function'])) {
            failures.add(ValueFailure.notPassTheValidation(
                failedValue: value, type: String, message: v['message']));
          }
          break;
        //
        case StringConstrains.regex:
          if (!_validator.regex(value: value, reg: v)) {
            failures.add(ValueFailure.invalidRegex(
                failedValue: value, regex: v.toString(), type: String));
          }
          break;
        //
        case StringConstrains.singleLine:
          if (!_validator.singleLine(value: value)) {
            failures.add(ValueFailure.notSingleLine(failedValue: value));
          }
          break;
      }
    });
    //
    return failures;
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