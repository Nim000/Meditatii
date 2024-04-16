import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:puzzle_app/model/full_box.dart';

class Componnent {
  Color color;
  List<List<FullBox?>> _array;
  Componnent(
      {required int width, required int height, this.color = Colors.blue})
      : _array = [
          for (int i = 0; i < height; i++)
            [for (int j = 0; j < width; j++) null]
        ];
  void set(int x, int y) {
    _array[y][x] = FullBox(componnent: this);
  }
  void unset(int x, int y) {
    _array[y][x] = null;
  }
  FullBox? get(int x, int y) {
    return _array[y][x];
  }
}
