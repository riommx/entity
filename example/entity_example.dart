import 'package:muzeek/domain/domain.dart';

void main() {
  var artist = Artist(
    id: VoUniqueId(),
    name: VoNameExemple(value: 'Sid'),
    name2: VoNameExemple(value: 'Sid'),
  );
  print(artist.failureOption);
}
