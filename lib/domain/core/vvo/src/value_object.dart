import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
//
import 'failures/value_error.dart';
import 'failures/value_failure.dart';
import 'validation/i_is_valid.dart';

// #############################################################################
// #  Ver: 1.0 - last: 11/04/22
// #  Nullsafety
// #  Base Class for Validated Value Objects
// #############################################################################
@immutable
abstract class ValueObject<T> extends Equatable implements IIsValid {
  //
  // ===========================================================================
  final Either<List<ValueFailure<T>>, T> _value;
  //
  // ===========================================================================
  const ValueObject(this._value);
  //
  // ===========================================================================
  /// Throws [UnexpectedValueError] containing the [ValueFailures]
  //
  T get getOrCrash {
    return _value.fold(
      (failures) => throw ValueError(failures),
      id, // id = identity - same as writing (right) => right
    );
  }

  //
  // ===========================================================================
  //
  Either<List<ValueFailure<dynamic>>, Unit> get failuresOrUnit {
    return _value.fold(
      (failures) => left(failures),
      (_) => right(unit),
    );
  }

  //
  // ===========================================================================
  T getOrElse(T defaultValue) => _value.getOrElse(() => defaultValue);
  //
  // ===========================================================================
  List<ValueFailure<T>> get failures => _value.fold(
        (l) => l,
        (r) => <ValueFailure<T>>[],
      );
  //
  // ===========================================================================
  // FOR IValidatable
  @override
  bool isValid() => _value.isRight();
  //
  // ===========================================================================
  // FOR Equatable
  @override
  bool get stringify => true;
  //
  // ===========================================================================
  // FOR Equatable
  @override
  List<Object> get props => [_value];
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