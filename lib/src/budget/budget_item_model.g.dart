// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BudgetItem _$BudgetItemFromJson(Map<String, dynamic> json) => BudgetItem(
      description: json['description'] as String,
    )
      ..uid = json['uid'] as int?
      ..budgeted = (json['budgeted'] as num).toDouble()
      ..transactions = (json['transactions'] as List<dynamic>)
          .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BudgetItemToJson(BudgetItem instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'description': instance.description,
      'budgeted': instance.budgeted,
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };
