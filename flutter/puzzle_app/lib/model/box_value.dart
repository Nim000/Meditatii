import 'package:puzzle_app/model/component.dart';
import 'package:puzzle_app/model/box_target.dart';

class BoxValue {
  Componnent componnent;
  BoxTarget? _boxTarget;
  BoxValue({required this.componnent});

  setEmptyBox(BoxTarget emptyBox) {
    if (_boxTarget != null) unsetEmptyBox();
    emptyBox.boxValue = this;
    _boxTarget = emptyBox;
  }

  unsetEmptyBox() {
    if (_boxTarget != null) {
      _boxTarget!.boxValue = null;
    }
    _boxTarget = null;
  }
}
