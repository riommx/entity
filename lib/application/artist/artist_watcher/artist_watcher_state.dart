part of 'artist_watcher_bloc.dart';

@freezed
class ArtistWatcherState with _$ArtistWatcherState {
  const factory ArtistWatcherState.initial() = _Initial;
  const factory ArtistWatcherState.loadInProgress() = _LoadInProgress;
  const factory ArtistWatcherState.loadSuccess(KtList<Artist> artists) =
      _LoadSuccess;
  const factory ArtistWatcherState.loadFailure(EntityFailure failure) =
      _LoadFailure;
}
