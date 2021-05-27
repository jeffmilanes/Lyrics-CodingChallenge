import 'package:coding_challenge/cubits/lyrics/lyrics_cubit.dart';
import 'package:coding_challenge/cubits/theme/theme_cubit.dart';
import 'package:coding_challenge/repositories/lyrics_repository.dart';
import 'package:coding_challenge/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final LyricsRepo _lyricsRepo;

  const App({Key? key, required LyricsRepo lyricsRepo})
      : _lyricsRepo = lyricsRepo,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _lyricsRepo,
      child: BlocProvider(
        create: (_) => ThemeCubit(),
        child: LyricsApp(),
      ),
    );
  }
}

class LyricsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Lyrics',
            theme: theme,
            home: BlocProvider(
                create: (_) => LyricsCubit(context.read<LyricsRepo>()),
                child: MainScreen()),
          );
        },
      ),
    );
  }
}
