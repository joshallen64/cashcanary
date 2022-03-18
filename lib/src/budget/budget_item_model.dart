import 'package:cashcanary/src/transactions/transaction_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../transactions/transaction_model.dart';

part 'budget_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BudgetItem {
  BudgetItem({required this.description});

  int? uid;
  String description;
  double budgeted = 0.00;
  List<Transaction> transactions = [];

  factory BudgetItem.fromJson(Map<String, dynamic> json) =>
      _$BudgetItemFromJson(json);

  Map<String, dynamic> toJson() => _$BudgetItemToJson(this);
}
