import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeData> {
  ThemeCubit() : super(lightTheme);

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.latoTextTheme(),
      backgroundColor: Colors.white,
      primaryColor: Colors.black,
      primarySwatch: Colors.red,
      dividerColor: Colors.grey[300],
      cardColor: Colors.white);

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: GoogleFonts.latoTextTheme()
          .apply(bodyColor: Colors.white, displayColor: Colors.white),
      backgroundColor: Colors.black,
      accentColor: Colors.red,
      primaryColor: Colors.white,
      primarySwatch: Colors.red,
      dividerColor: Colors.grey[900],
      cardColor: Colors.black,
      canvasColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white));

  void lightMode() {
    emit(lightTheme);
  }

  void darkMode() {
    emit(darkTheme);
  }

  @override
  ThemeData? fromJson(Map<String, dynamic> json) {
    try {
      if (json['theme'] as bool) return lightTheme;
      return darkTheme;
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(ThemeData state) {
    try {
      return {'theme': state == lightTheme};
    } catch (_) {
      return {'theme': false};
    }
  }
}
