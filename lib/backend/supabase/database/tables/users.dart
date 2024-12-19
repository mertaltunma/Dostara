import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'Users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  String? get userPassword => getField<String>('user_password');
  set userPassword(String? value) => setField<String>('user_password', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userPhone => getField<String>('user_phone');
  set userPhone(String? value) => setField<String>('user_phone', value);

  String? get userPhoto => getField<String>('user_photo');
  set userPhoto(String? value) => setField<String>('user_photo', value);

  String? get userType => getField<String>('user_type');
  set userType(String? value) => setField<String>('user_type', value);
}
