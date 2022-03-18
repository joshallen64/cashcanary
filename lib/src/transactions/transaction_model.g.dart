// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      description: json['description'] as String,
    )
      ..uid = json['uid'] as int?
      ..amount = (json['amount'] as num).toDouble();

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'description': instance.description,
      'amount': instance.amount,
    };
