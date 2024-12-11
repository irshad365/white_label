import 'package:flutter/material.dart';
import 'package:white_label/client_switch.dart';
import 'package:white_label/mock_network.dart';
import 'package:white_label/model/feature.dart';

class HomeViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  Feature? _feature;
  Feature? get feature => _feature;

  HomeViewModel() {
    fetchData();
  }

  void fetchData() {
    _feature = NetworkService.fetchFeature(ClientSwitch.current().id);
    notifyListeners();
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

  void incrementDoubleCounter() {
    _counter = _counter + 2;
    notifyListeners();
  }
}
