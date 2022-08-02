import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

class OverallPrice with ChangeNotifier, DiagnosticableTreeMixin {
  String addedSum = '';
  List<int> list = [];
  int sum = 0;
  String stringSum = '';

  void add(int additionValueStandard) {
    list.add(additionValueStandard);
    sum = list.sum;
    stringSum = sum.toString() + ",00 RSD";
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', 0));
  }
}