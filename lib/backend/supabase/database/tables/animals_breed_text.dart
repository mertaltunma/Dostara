import '../database.dart';

class AnimalsBreedTextTable extends SupabaseTable<AnimalsBreedTextRow> {
  @override
  String get tableName => 'AnimalsBreedText';

  @override
  AnimalsBreedTextRow createRow(Map<String, dynamic> data) =>
      AnimalsBreedTextRow(data);
}

class AnimalsBreedTextRow extends SupabaseDataRow {
  AnimalsBreedTextRow(super.data);

  @override
  SupabaseTable get table => AnimalsBreedTextTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get breedText => getField<String>('breed_text');
  set breedText(String? value) => setField<String>('breed_text', value);

  int? get animalId => getField<int>('animal_id');
  set animalId(int? value) => setField<int>('animal_id', value);
}
