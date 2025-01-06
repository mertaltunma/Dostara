import '../database.dart';

class ShelterLocationsTable extends SupabaseTable<ShelterLocationsRow> {
  @override
  String get tableName => 'ShelterLocations';

  @override
  ShelterLocationsRow createRow(Map<String, dynamic> data) =>
      ShelterLocationsRow(data);
}

class ShelterLocationsRow extends SupabaseDataRow {
  ShelterLocationsRow(super.data);

  @override
  SupabaseTable get table => ShelterLocationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<double> get coordinates => getListField<double>('coordinates');
  set coordinates(List<double>? value) =>
      setListField<double>('coordinates', value);
}
