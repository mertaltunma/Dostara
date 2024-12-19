import '../database.dart';

class CommentsTable extends SupabaseTable<CommentsRow> {
  @override
  String get tableName => 'Comments';

  @override
  CommentsRow createRow(Map<String, dynamic> data) => CommentsRow(data);
}

class CommentsRow extends SupabaseDataRow {
  CommentsRow(super.data);

  @override
  SupabaseTable get table => CommentsTable();

  int get commentId => getField<int>('comment_id')!;
  set commentId(int value) => setField<int>('comment_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get rate => getField<int>('rate');
  set rate(int? value) => setField<int>('rate', value);

  String? get commentText => getField<String>('comment_text');
  set commentText(String? value) => setField<String>('comment_text', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userPhoto => getField<String>('user_photo');
  set userPhoto(String? value) => setField<String>('user_photo', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get shelterUserId => getField<String>('shelter_user_id');
  set shelterUserId(String? value) =>
      setField<String>('shelter_user_id', value);
}
