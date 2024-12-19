import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_accountInfo')) {
        try {
          final serializedData = prefs.getString('ff_accountInfo') ?? '{}';
          _accountInfo =
              AccountInfoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  AccountInfoStruct _accountInfo = AccountInfoStruct();
  AccountInfoStruct get accountInfo => _accountInfo;
  set accountInfo(AccountInfoStruct value) {
    _accountInfo = value;
    prefs.setString('ff_accountInfo', value.serialize());
  }

  void updateAccountInfoStruct(Function(AccountInfoStruct) updateFn) {
    updateFn(_accountInfo);
    prefs.setString('ff_accountInfo', _accountInfo.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
