import 'package:flutter/material.dart';

BoxDecoration background() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/dark_background.png"),
      fit: BoxFit.fitHeight,
      repeat: ImageRepeat.repeat,
    ),
  );
}
