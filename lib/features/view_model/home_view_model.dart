import 'package:mobx/mobx.dart';

import '../../model/bank_model.dart';
import '../../service/service.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  _HomeViewModelBase(this.bankService);

  final IService bankService;

  @observable
  List<BankModel> bankModelItem = [];

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchData() async {
    _changeLoading();
    final bankResponse = await bankService.fetchBankItems();
    bankModelItem = bankResponse ?? [];
    _changeLoading();
  }
}
