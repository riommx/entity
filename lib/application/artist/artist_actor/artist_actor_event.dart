part of 'artist_actor_bloc.dart';

@freezed
class ArtistActorEvent with _$ArtistActorEvent {
  const factory ArtistActorEvent.started() = _Started;
}