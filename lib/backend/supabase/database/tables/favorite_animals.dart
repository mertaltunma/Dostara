import '../database.dart';

class FavoriteAnimalsTable extends SupabaseTable<FavoriteAnimalsRow> {
  @override
  String get tableName => 'FavoriteAnimals';

  @override
  FavoriteAnimalsRow createRow(Map<String, dynamic> data) =>
      FavoriteAnimalsRow(data);
}

class FavoriteAnimalsRow extends SupabaseDataRow {
  FavoriteAnimalsRow(super.data);

  @override
  SupabaseTable get table => FavoriteAnimalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get animalId => getField<int>('animal_id');
  set animalId(int? value) => setField<int>('animal_id', value);

  String? get animalPhoto => getField<String>('animal_photo');
  set animalPhoto(String? value) => setField<String>('animal_photo', value);

  String? get animalName => getField<String>('animal_name');
  set animalName(String? value) => setField<String>('animal_name', value);

  String? get breed => getField<String>('breed');
  set breed(String? value) => setField<String>('breed', value);

  String? get shelterName => getField<String>('shelter_name');
  set shelterName(String? value) => setField<String>('shelter_name', value);

  String? get shelterLocation => getField<String>('shelter_location');
  set shelterLocation(String? value) =>
      setField<String>('shelter_location', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get isClickedFavorite => getField<bool>('isClickedFavorite');
  set isClickedFavorite(bool? value) =>
      setField<bool>('isClickedFavorite', value);

  String? get shelterId => getField<String>('shelterId');
  set shelterId(String? value) => setField<String>('shelterId', value);
}
