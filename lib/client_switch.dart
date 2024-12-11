import 'package:flutter/services.dart';

class ClientSwitch {
  static const qweStaffing = 'qwe';
  static const asdResourcing = 'asd';
  static const zxcTempAgency = 'zxc';

  static ClientProtocol current() {
    ClientProtocol client;

    switch (appFlavor) {
      case ClientSwitch.qweStaffing:
        client = QweStaffing();
      case ClientSwitch.asdResourcing:
        client = AsdResourcing();
      default:
        client = ZxcTempAgency();
    }

    return client;
  }
}

abstract class ClientProtocol {
  int get id;
  String get title;
  Color get color;
  String get iconPath;
}

class QweStaffing implements ClientProtocol {
  @override
  String get title => 'Qwe Staffing';

  @override
  Color get color => const Color(0xFF106CC7);

  @override
  String get iconPath => 'assets/qwe/images/icon.png';

  @override
  int get id => 1;
}

class AsdResourcing implements ClientProtocol {
  @override
  String get title => 'Asd Resourcing';

  @override
  Color get color => const Color(0xFFF9C032);

  @override
  String get iconPath => 'assets/asd/images/icon.png';

  @override
  int get id => 2;
}

class ZxcTempAgency implements ClientProtocol {
  @override
  String get title => 'Zxc Temp Agency';

  @override
  Color get color => const Color(0xFFdd5138);

  @override
  String get iconPath => 'assets/zxc/images/icon.png';

  @override
  int get id => 3;
}
