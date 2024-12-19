import '../database.dart';

class FoundedAnimalsTable extends SupabaseTable<FoundedAnimalsRow> {
  @override
  String get tableName => 'FoundedAnimals';

  @override
  FoundedAnimalsRow createRow(Map<String, dynamic> data) =>
      FoundedAnimalsRow(data);
}

class FoundedAnimalsRow extends SupabaseDataRow {
  FoundedAnimalsRow(super.data);

  @override
  SupabaseTable get table => FoundedAnimalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get animalPhoto => getField<String>('animal_photo');
  set animalPhoto(String? value) => setField<String>('animal_photo', value);

  String? get animalName => getField<String>('animal_name');
  set animalName(String? value) => setField<String>('animal_name', value);
}
