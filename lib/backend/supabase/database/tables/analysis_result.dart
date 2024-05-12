import '../database.dart';

class AnalysisResultTable extends SupabaseTable<AnalysisResultRow> {
  @override
  String get tableName => 'analysis_result';

  @override
  AnalysisResultRow createRow(Map<String, dynamic> data) =>
      AnalysisResultRow(data);
}

class AnalysisResultRow extends SupabaseDataRow {
  AnalysisResultRow(super.data);

  @override
  SupabaseTable get table => AnalysisResultTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get analysisId => getField<String>('analysis_id')!;
  set analysisId(String value) => setField<String>('analysis_id', value);

  String? get plantId => getField<String>('plant_id');
  set plantId(String? value) => setField<String>('plant_id', value);

  int? get match => getField<int>('match');
  set match(int? value) => setField<int>('match', value);
}
