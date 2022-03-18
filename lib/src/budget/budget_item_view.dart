import 'package:flutter/material.dart';

class BudgetItemView extends StatefulWidget {
  const BudgetItemView({
    Key? key,
  }) : super(key: key);

  static const routeName = '/budgetItemView';

  @override
  State<BudgetItemView> createState() => _BudgetItemViewState();
}

class _BudgetItemViewState extends State<BudgetItemView> {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text('Item $index'),
      ),
    );
  }
}
