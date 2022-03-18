import 'package:cashcanary/src/budget/budget_item_view.dart';
import 'package:cashcanary/src/settings/settings_view.dart';
import 'package:flutter/material.dart';

class BudgetItemListView extends StatelessWidget {
  const BudgetItemListView({Key? key}) : super(key: key);

  static const routeName = '/budgets';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cash-Canary™"), actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).restorablePushNamed(SettingsView.routeName);
          },
          icon: Icon(Icons.settings),
        ),
      ]),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("stuff $index"),
            onTap: () {
              Navigator.of(context).restorablePushNamed(
                  BudgetItemView.routeName,
                  arguments: index);
            },
          );
        },
        itemCount: 30,
      ),
    );
  }
}
