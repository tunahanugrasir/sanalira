import 'package:vexana/vexana.dart';

import '../model/bank_model.dart';

abstract class IService {
  IService(INetworkManager networkManager) : _networkManager = networkManager;
  final INetworkManager _networkManager;

  Future<List<BankModel>?> fetchBankItems();
}

class BankService extends IService {
  BankService(super.networkManager);

  @override
  Future<List<BankModel>?> fetchBankItems() async {
    final response = await _networkManager.send<BankModel, List<BankModel>>(
      ServicePaths.assignment.path,
      parseModel: BankModel(),
      method: RequestType.GET,
    );
    return response.data;
  }
}

enum ServicePaths { assignment }

extension ServicePathsExtension on ServicePaths {
  String get path => '/$name';
}
