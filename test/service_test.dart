import 'package:flutter_test/flutter_test.dart';
import 'package:sanalira/model/bank_model.dart';
import 'package:sanalira/service/service.dart';
import 'package:vexana/vexana.dart';

void main() {
  late IService service;
  setUp(() {
    service = BankService(
      NetworkManager<BankModel>(options: BaseOptions(baseUrl: "https://api.sanalira.com/"), isEnableLogger: true),
    );
  });
  test('Fetch Data Test', () async {
    final response = await service.fetchBankItems();
    expect(response, isNotNull);
  });
}
