import 'package:vexana/vexana.dart';

import '../../model/bank_model.dart';

class NetworkInit {
  NetworkInit._init() {
    networkManager = NetworkManager<BankModel>(options: BaseOptions(baseUrl: _baseURL));
  }

  late final INetworkManager networkManager;
  static NetworkInit? _instance;
  static const String _baseURL = 'https://api.sanalira.com';
  static NetworkInit get instance {
    _instance ?? NetworkInit._init();
    return _instance!;
  }
}
