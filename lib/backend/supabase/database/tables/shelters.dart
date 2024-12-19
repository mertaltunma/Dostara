import '../database.dart';

class SheltersTable extends SupabaseTable<SheltersRow> {
  @override
  String get tableName => 'Shelters';

  @override
  SheltersRow createRow(Map<String, dynamic> data) => SheltersRow(data);
}

class SheltersRow extends SupabaseDataRow {
  SheltersRow(super.data);

  @override
  SupabaseTable get table => SheltersTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get shelterPhoto => getField<String>('shelter_photo');
  set shelterPhoto(String? value) => setField<String>('shelter_photo', value);

  String? get shelterName => getField<String>('shelter_name');
  set shelterName(String? value) => setField<String>('shelter_name', value);

  String? get shelterLocation => getField<String>('shelter_location');
  set shelterLocation(String? value) =>
      setField<String>('shelter_location', value);

  String? get capacity => getField<String>('capacity');
  set capacity(String? value) => setField<String>('capacity', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get explanation => getField<String>('explanation');
  set explanation(String? value) => setField<String>('explanation', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);
}
