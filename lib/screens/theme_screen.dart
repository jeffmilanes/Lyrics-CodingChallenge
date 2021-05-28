import 'package:coding_challenge/cubits/lyrics/lyrics_cubit.dart';
import 'package:coding_challenge/cubits/theme/theme_cubit.dart';
import 'package:coding_challenge/widgets/clipper.dart';
import 'package:coding_challenge/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeScreen extends StatefulWidget {
  final bool? initialize;

  const ThemeScreen({this.initialize = false});

  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 2000), vsync: this)
          ..repeat();

    animation = Tween<double>(begin: 0, end: -700).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeClipPath(animation, widget.initialize!);
  }
}

class ThemeClipPath extends AnimatedWidget {
  final Animation<double> animation;
  final bool initialize;

  ThemeClipPath(this.animation, this.initialize) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: 80.0,
              left: 30.0,
              child: Text(
                'L.',
                style: TextStyle(
                    color: Color(0xFFFF0202),
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0),
              ),
            ),
            Positioned(
              top: 180.0,
              left: 30.0,
              child: Text(
                'Choose your \nTheme',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
            Positioned(
              bottom: 50.0,
              left: 60.0,
              child: CustomTextButton(
                key: Key('dark'),
                onPressed: () {
                  if (initialize) {
                    context.read<LyricsCubit>().getLyrics();
                  } else {
                    Navigator.of(context).pop();
                  }
                  context.read<ThemeCubit>().darkMode();
                },
                child: Icon(Icons.dark_mode),
              ),
            ),
            Positioned(
              top: animation.value,
              child: ClipPath(
                clipper: CustomClipperWidget(),
                child: Container(
                  color: Colors.white,
                  width: size.width,
                  height: 3500,
                ),
              ),
            ),
            Positioned(
              bottom: 50.0,
              right: 60.0,
              child: CustomTextButton(
                key: Key('light'),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                onPressed: () {
                  if (initialize) {
                    context.read<LyricsCubit>().getLyrics();
                  } else {
                    Navigator.of(context).pop();
                  }
                  context.read<ThemeCubit>().lightMode();
                },
                child: Icon(Icons.light_mode),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
