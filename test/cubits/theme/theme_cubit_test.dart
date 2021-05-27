import 'package:bloc_test/bloc_test.dart';
import 'package:coding_challenge/cubits/theme/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

import '../../helpers/hydrated_bloc.dart';

void main() {
  initHydratedBloc();
  group('Theme Cubit', () {
    late ThemeCubit themeCubit;

    setUp(() {
      themeCubit = ThemeCubit();
    });

    tearDown(() {
      themeCubit.close();
    });

    test('Init Theme State', () {
      expect(themeCubit.state, ThemeCubit.lightTheme);
    });

    test('JSON Check', () {
      expect(
        themeCubit.fromJson(themeCubit.toJson(themeCubit.state)),
        themeCubit.state,
      );
    });

    blocTest<ThemeCubit, ThemeData>(
      'emits dark theme',
      build: () => ThemeCubit(),
      act: (cubit) => cubit.darkMode(),
      expect: () => <ThemeData>[ThemeCubit.darkTheme],
    );

    blocTest<ThemeCubit, ThemeData>(
      'emits light theme',
      build: () => ThemeCubit(),
      act: (cubit) => cubit.lightMode(),
      expect: () => <ThemeData>[ThemeCubit.lightTheme],
    );
  });
}
