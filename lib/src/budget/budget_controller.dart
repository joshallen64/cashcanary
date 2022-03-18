import 'package:flutter/material.dart';

import 'budget_service.dart';

class BudgetController with ChangeNotifier {
  BudgetController(this._budgetService);

  final BudgetService _budgetService;
}
