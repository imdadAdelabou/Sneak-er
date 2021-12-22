import 'package:flutter/material.dart';
import 'package:sneaker/utils/constant.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;
  void setState(ViewState value) {
    _state = value;
    notifyListeners();
  }

  ViewState get getState => _state;
}
