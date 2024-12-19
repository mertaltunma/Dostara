import '../database.dart';

class OtherAnnouncementsTable extends SupabaseTable<OtherAnnouncementsRow> {
  @override
  String get tableName => 'OtherAnnouncements';

  @override
  OtherAnnouncementsRow createRow(Map<String, dynamic> data) =>
      OtherAnnouncementsRow(data);
}

class OtherAnnouncementsRow extends SupabaseDataRow {
  OtherAnnouncementsRow(super.data);

  @override
  SupabaseTable get table => OtherAnnouncementsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get animalPhoto => getField<String>('animal_photo');
  set animalPhoto(String? value) => setField<String>('animal_photo', value);

  String? get announcementType => getField<String>('announcement_type');
  set announcementType(String? value) =>
      setField<String>('announcement_type', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get explanation => getField<String>('explanation');
  set explanation(String? value) => setField<String>('explanation', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String get ownerName => getField<String>('owner_name')!;
  set ownerName(String value) => setField<String>('owner_name', value);

  String? get ownerPhone => getField<String>('owner_phone');
  set ownerPhone(String? value) => setField<String>('owner_phone', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
