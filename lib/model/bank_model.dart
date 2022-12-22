import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';

part 'bank_model.g.dart';

class BankModel extends INetworkModel<BankModel> with EquatableMixin {
  final Response? response;
  final List<Data>? data;

  BankModel({
    this.response,
    this.data,
  });

  @override
  List<Object?> get props => [response, data];

  @override
  BankModel fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

class Response extends INetworkModel<Response> {
  int? code;
  String? message;

  Response({this.code, this.message});

  @override
  Response fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

class Data extends INetworkModel<Data> {
  String? bankName;
  String? bankIban;
  String? bankAccountName;
  String? descriptionNo;

  Data({this.bankName, this.bankIban, this.bankAccountName, this.descriptionNo});

  @override
  Data fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
