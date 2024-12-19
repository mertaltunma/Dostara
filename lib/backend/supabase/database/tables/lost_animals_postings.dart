import '../database.dart';

class LostAnimalsPostingsTable extends SupabaseTable<LostAnimalsPostingsRow> {
  @override
  String get tableName => 'LostAnimalsPostings';

  @override
  LostAnimalsPostingsRow createRow(Map<String, dynamic> data) =>
      LostAnimalsPostingsRow(data);
}

class LostAnimalsPostingsRow extends SupabaseDataRow {
  LostAnimalsPostingsRow(super.data);

  @override
  SupabaseTable get table => LostAnimalsPostingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get animalPhoto => getField<String>('animal_photo');
  set animalPhoto(String? value) => setField<String>('animal_photo', value);

  String get animalName => getField<String>('animal_name')!;
  set animalName(String value) => setField<String>('animal_name', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get explanation => getField<String>('explanation');
  set explanation(String? value) => setField<String>('explanation', value);

  String get ownerName => getField<String>('owner_name')!;
  set ownerName(String value) => setField<String>('owner_name', value);

  String? get ownerPhone => getField<String>('owner_phone');
  set ownerPhone(String? value) => setField<String>('owner_phone', value);

  String? get ownerEmail => getField<String>('owner_email');
  set ownerEmail(String? value) => setField<String>('owner_email', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
