part of 'artist_watcher_bloc.dart';

@freezed
class ArtistWatcherEvent with _$ArtistWatcherEvent {
  const factory ArtistWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ArtistWatcherEvent.watchRegardStarted() = _WatchRegardStarted;
}
