import 'package:coding_challenge/repositories/lyrics_repository.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'app.dart';
import 'bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = LyricsBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(App(lyricsRepo: LyricsRepo()));
}
