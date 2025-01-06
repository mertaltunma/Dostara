import '../database.dart';

class ImagesOfAnimalsTable extends SupabaseTable<ImagesOfAnimalsRow> {
  @override
  String get tableName => 'ImagesOfAnimals';

  @override
  ImagesOfAnimalsRow createRow(Map<String, dynamic> data) =>
      ImagesOfAnimalsRow(data);
}

class ImagesOfAnimalsRow extends SupabaseDataRow {
  ImagesOfAnimalsRow(super.data);

  @override
  SupabaseTable get table => ImagesOfAnimalsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
