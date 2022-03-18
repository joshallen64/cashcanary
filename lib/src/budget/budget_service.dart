import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'budget_item_model.dart';
import 'budget_model.dart';

class BudgetService {
  final CollectionReference _budgetsFirebase =
      FirebaseFirestore.instance.collection('budgets');

  void initFireBase() async {}
}
