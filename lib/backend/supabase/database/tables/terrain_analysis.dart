import '../database.dart';

class TerrainAnalysisTable extends SupabaseTable<TerrainAnalysisRow> {
  @override
  String get tableName => 'terrain_analysis';

  @override
  TerrainAnalysisRow createRow(Map<String, dynamic> data) =>
      TerrainAnalysisRow(data);
}

class TerrainAnalysisRow extends SupabaseDataRow {
  TerrainAnalysisRow(super.data);

  @override
  SupabaseTable get table => TerrainAnalysisTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get terrainId => getField<String>('terrain_id')!;
  set terrainId(String value) => setField<String>('terrain_id', value);
}
