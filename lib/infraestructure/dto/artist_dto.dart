import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muzeek/domain/domain.dart';
//

// #############################################################################
// #  Ver: 1.0 - last: 12/01/22
// #  Nullsafety
// #  Freezed Union of Value Failures
// #############################################################################
//
part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

//
@freezed
abstract class ArtistDto implements _$ArtistDto {
  //
  const ArtistDto._();
  //
  const factory ArtistDto({
    required String id,
    required String name,
    required String name2,
  }) = _ArtistTdo;

  factory ArtistDto.fromDomain(Artist artist) {
    return ArtistDto(
      id: artist.id.getOrCrash,
      name: artist.name.getOrCrash,
      name2: artist.name2.getOrCrash,
    );
  }

  Artist toDomain() {
    return Artist(
      id: VoUniqueId.fromUniqueString(uniqueId: id),
      name: VoNameExemple(value: name),
      name2: VoNameExemple(value: name2),
    );
  }

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);

  //factory ArtistDto.fromFirestore(DocumentSnapshot doc) =>
  //    ArtistDto.fromJson(doc.data).copyWith(id: doc.documentID);

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