import '../database.dart';

class AdoptedAnimalsTable extends SupabaseTable<AdoptedAnimalsRow> {
  @override
  String get tableName => 'AdoptedAnimals';

  @override
  AdoptedAnimalsRow createRow(Map<String, dynamic> data) =>
      AdoptedAnimalsRow(data);
}

class AdoptedAnimalsRow extends SupabaseDataRow {
  AdoptedAnimalsRow(super.data);

  @override
  SupabaseTable get table => AdoptedAnimalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get animalName => getField<String>('AnimalName');
  set animalName(String? value) => setField<String>('AnimalName', value);

  String? get animalBreed => getField<String>('AnimalBreed');
  set animalBreed(String? value) => setField<String>('AnimalBreed', value);

  String? get userName => getField<String>('UserName');
  set userName(String? value) => setField<String>('UserName', value);

  String? get userPhone => getField<String>('UserPhone');
  set userPhone(String? value) => setField<String>('UserPhone', value);

  String? get userMail => getField<String>('UserMail');
  set userMail(String? value) => setField<String>('UserMail', value);

  DateTime? get adoptedTime => getField<DateTime>('AdoptedTime');
  set adoptedTime(DateTime? value) => setField<DateTime>('AdoptedTime', value);

  bool? get isAdopted => getField<bool>('isAdopted');
  set isAdopted(bool? value) => setField<bool>('isAdopted', value);

  String? get shelterId => getField<String>('ShelterId');
  set shelterId(String? value) => setField<String>('ShelterId', value);

  String? get animalPhoto => getField<String>('AnimalPhoto');
  set animalPhoto(String? value) => setField<String>('AnimalPhoto', value);
}
