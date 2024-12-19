import '../database.dart';

class AnimalsTable extends SupabaseTable<AnimalsRow> {
  @override
  String get tableName => 'Animals';

  @override
  AnimalsRow createRow(Map<String, dynamic> data) => AnimalsRow(data);
}

class AnimalsRow extends SupabaseDataRow {
  AnimalsRow(super.data);

  @override
  SupabaseTable get table => AnimalsTable();

  int get animalId => getField<int>('animal_id')!;
  set animalId(int value) => setField<int>('animal_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get animalName => getField<String>('animal_name')!;
  set animalName(String value) => setField<String>('animal_name', value);

  String? get animalPhoto => getField<String>('animal_photo');
  set animalPhoto(String? value) => setField<String>('animal_photo', value);

  String? get specie => getField<String>('specie');
  set specie(String? value) => setField<String>('specie', value);

  String? get breed => getField<String>('breed');
  set breed(String? value) => setField<String>('breed', value);

  String? get age => getField<String>('age');
  set age(String? value) => setField<String>('age', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  String? get breedText => getField<String>('breed_text');
  set breedText(String? value) => setField<String>('breed_text', value);

  String? get dateShelter => getField<String>('date_shelter');
  set dateShelter(String? value) => setField<String>('date_shelter', value);

  String? get animalText => getField<String>('animal_text');
  set animalText(String? value) => setField<String>('animal_text', value);

  String? get shelterName => getField<String>('shelter_name');
  set shelterName(String? value) => setField<String>('shelter_name', value);

  String? get shelterLocation => getField<String>('shelter_location');
  set shelterLocation(String? value) =>
      setField<String>('shelter_location', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
