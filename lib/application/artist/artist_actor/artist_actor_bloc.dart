import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_actor_event.dart';
part 'artist_actor_state.dart';
part 'artist_actor_bloc.freezed.dart';

class ArtistActorBloc extends Bloc<ArtistActorEvent, ArtistActorState> {
  ArtistActorBloc() : super(_Initial()) {
    on<ArtistActorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
