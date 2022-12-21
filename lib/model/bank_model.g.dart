// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankModel _$BankModelFromJson(Map<String, dynamic> json) => BankModel(
      response: json['response'] == null
          ? null
          : Response.fromJson(json['response'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      bankName: json['bankName'] as String?,
      bankIban: json['bankIban'] as String?,
      bankAccountName: json['bankAccountName'] as String?,
      descriptionNo: json['descriptionNo'] as String?,
    );
