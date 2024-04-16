import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/model/empty_box.dart';

class FullBox {
  Componnent componnent;
  EmptyBox? _emptyBox;
  FullBox({required this.componnent});

  setEmptyBox(EmptyBox emptyBox) {
    if (_emptyBox != null) unsetEmptyBox();
    emptyBox.fullBox = this;
    _emptyBox = emptyBox;
  }

  unsetEmptyBox() {
    if (_emptyBox != null) {
      _emptyBox!.fullBox = null;
    }
    _emptyBox = null;
  }
}
