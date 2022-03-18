import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  final CollectionReference _settingsFirebase =
      FirebaseFirestore.instance.collection('settings');

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async {
    User? user = FirebaseAuth.instance.currentUser;
    //await users.doc()
    if (user == null) {
      return ThemeMode.system;
    } else {
      DocumentSnapshot settingsSnapshot =
          await _settingsFirebase.doc(user.uid).get();

      if (!settingsSnapshot.exists) {
        return ThemeMode.system;
      }

      Map<String, dynamic> settingsData =
          settingsSnapshot.data() as Map<String, dynamic>;
      if (settingsData['themeMode'] == null) {
        return ThemeMode.system;
      }

      return ThemeMode.values[settingsData['themeMode']];
    }
  }

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      _settingsFirebase
          .doc(user.uid)
          .set(
            {
              'themeMode': theme.index,
              'fart3': 'smell bad',
            },
            SetOptions(merge: true),
          )
          .then((value) => print('updated'))
          .catchError((error) => print('Failed: $error'));
    }
  }
}

class Settings {
  ThemeMode themeMode = ThemeMode.system;
}
