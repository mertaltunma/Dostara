import '../database.dart';

class BreedsTable extends SupabaseTable<BreedsRow> {
  @override
  String get tableName => 'Breeds';

  @override
  BreedsRow createRow(Map<String, dynamic> data) => BreedsRow(data);
}

class BreedsRow extends SupabaseDataRow {
  BreedsRow(super.data);

  @override
  SupabaseTable get table => BreedsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get breedDescription => getField<String>('breed_description');
  set breedDescription(String? value) =>
      setField<String>('breed_description', value);
}
