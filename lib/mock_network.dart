import 'package:white_label/model/feature.dart';

class NetworkService {
  static Feature fetchFeature(int input) {
    return Feature.fromJson(getMockJson(input));
  }
}
