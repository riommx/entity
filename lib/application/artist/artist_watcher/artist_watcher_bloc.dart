/*
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:muzeek/domain/core/entity/entity.dart';
import 'package:muzeek/domain/domain.dart';

part 'artist_watcher_event.dart';
part 'artist_watcher_state.dart';
part 'artist_watcher_bloc.freezed.dart';

@injectable
class ArtistWatcherBloc extends Bloc<ArtistWatcherEvent, ArtistWatcherState> {
  final IEntityRepository<Artist> _repository;



  ArtistWatcherBloc(this._repository) : super(_Initial()) {
    on<ArtistWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
*/
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:muzeek/domain/domain.dart';

part 'artist_watcher_event.dart';
part 'artist_watcher_state.dart';
part 'artist_watcher_bloc.freezed.dart';

@injectable
class ArtistWatcherBloc extends Bloc<ArtistWatcherEvent, ArtistWatcherState> {
  final IEntityRepository _artistRepository;

  ArtistWatcherBloc(this._artistRepository)
      : super(const ArtistWatcherState.initial());

  StreamSubscription<Either<EntityFailure, KtList<Artist>>>
      _artistStreamSubscription;

  //@override
  Stream<ArtistWatcherState> mapEventToState(
    ArtistWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ArtistWatcherState.loadInProgress();
        await _artistStreamSubscription.cancel();
        _artistStreamSubscription = _artistRepository.watchAll().listen(
              (failureOrArtists) =>
                  add(ArtistWatcherEvent.artistsReceived(failureOrArtists)),
            );
      },
      watchRegardStarted: (e) async* {
        yield const ArtistWatcherState.loadInProgress();
        await _artistStreamSubscription.cancel();
        _artistStreamSubscription = _artistRepository
            .watchRegard(
              fun: (_) => true,
            )
            .listen(
              (failureOrArtists) =>
                  add(ArtistWatcherEvent.artistsReceived(failureOrArtists)),
            );
      },
      artistsReceived: (e) async* {
        yield e.failureOrArtists.fold(
          (f) => ArtistWatcherState.loadFailure(f),
          (artists) => ArtistWatcherState.loadSuccess(artists),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _artistStreamSubscription.cancel();
    return super.close();
  }
}
