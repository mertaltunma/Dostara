import '../database.dart';

class VetLocationsTable extends SupabaseTable<VetLocationsRow> {
  @override
  String get tableName => 'VetLocations';

  @override
  VetLocationsRow createRow(Map<String, dynamic> data) => VetLocationsRow(data);
}

class VetLocationsRow extends SupabaseDataRow {
  VetLocationsRow(super.data);

  @override
  SupabaseTable get table => VetLocationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<double> get coordinates => getListField<double>('coordinates');
  set coordinates(List<double>? value) =>
      setListField<double>('coordinates', value);
}
