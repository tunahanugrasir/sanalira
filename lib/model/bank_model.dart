import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'bank_model.g.dart';

@JsonSerializable(createToJson: false)
class BankModel extends INetworkModel<BankModel> {
  Response? response;
  List<Data>? data;

  BankModel({this.response, this.data});

  factory BankModel.fromJson(Map<String, dynamic> json) {
    return _$BankModelFromJson(json);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    return _$BankModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }
}

@JsonSerializable(createToJson: false)
class Response {
  int? code;
  String? message;

  Response({this.code, this.message});

  factory Response.fromJson(Map<String, dynamic> json) {
    return _$ResponseFromJson(json);
  }
}

@JsonSerializable(createToJson: false)
class Data {
  String? bankName;
  String? bankIban;
  String? bankAccountName;
  String? descriptionNo;

  Data({this.bankName, this.bankIban, this.bankAccountName, this.descriptionNo});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }
}
