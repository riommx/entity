// #############################################################################
// #  Ver: 1.0 - last: 11/04/22
// #  Nullsafety
// #  Interface to validate a String
// #############################################################################
abstract class IStringValidator {
  //
  bool notEmpty({required String value});
  //
  bool singleLine({required String value});
  //
  bool dateTime({required String value});
  //
  bool minLength({
    required String value,
    required int min,
  });
  //
  bool maxLength({
    required String value,
    required int max,
  });
  //
  bool regex({
    required String value,
    required RegExp reg,
  });
  //
  bool otherValidation({
    required String value,
    required bool Function(String value) fun,
  });
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