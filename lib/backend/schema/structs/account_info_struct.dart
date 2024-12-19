// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountInfoStruct extends BaseStruct {
  AccountInfoStruct({
    String? name,
    String? email,
    String? phoneNumber,
    String? photoPath,
  })  : _name = name,
        _email = email,
        _phoneNumber = phoneNumber,
        _photoPath = photoPath;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_path" field.
  String? _photoPath;
  String get photoPath => _photoPath ?? '';
  set photoPath(String? val) => _photoPath = val;

  bool hasPhotoPath() => _photoPath != null;

  static AccountInfoStruct fromMap(Map<String, dynamic> data) =>
      AccountInfoStruct(
        name: data['name'] as String?,
        email: data['email'] as String?,
        phoneNumber: data['phone_number'] as String?,
        photoPath: data['photo_path'] as String?,
      );

  static AccountInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? AccountInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'email': _email,
        'phone_number': _phoneNumber,
        'photo_path': _photoPath,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'photo_path': serializeParam(
          _photoPath,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountInfoStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        photoPath: deserializeParam(
          data['photo_path'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountInfoStruct &&
        name == other.name &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        photoPath == other.photoPath;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, email, phoneNumber, photoPath]);
}

AccountInfoStruct createAccountInfoStruct({
  String? name,
  String? email,
  String? phoneNumber,
  String? photoPath,
}) =>
    AccountInfoStruct(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      photoPath: photoPath,
    );
