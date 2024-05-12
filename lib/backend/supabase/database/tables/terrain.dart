import '../database.dart';

class TerrainTable extends SupabaseTable<TerrainRow> {
  @override
  String get tableName => 'terrain';

  @override
  TerrainRow createRow(Map<String, dynamic> data) => TerrainRow(data);
}

class TerrainRow extends SupabaseDataRow {
  TerrainRow(super.data);

  @override
  SupabaseTable get table => TerrainTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get registeredMinTemperature =>
      getField<int>('registered_min_temperature');
  set registeredMinTemperature(int? value) =>
      setField<int>('registered_min_temperature', value);

  int? get registeredMaxTemperature =>
      getField<int>('registered_max_temperature');
  set registeredMaxTemperature(int? value) =>
      setField<int>('registered_max_temperature', value);

  int? get multianualTemperature => getField<int>('multianual_temperature');
  set multianualTemperature(int? value) =>
      setField<int>('multianual_temperature', value);

  int? get precipitation => getField<int>('precipitation');
  set precipitation(int? value) => setField<int>('precipitation', value);

  String? get soilTexture => getField<String>('soil_texture');
  set soilTexture(String? value) => setField<String>('soil_texture', value);

  int? get clay => getField<int>('clay');
  set clay(int? value) => setField<int>('clay', value);

  int? get angle => getField<int>('angle');
  set angle(int? value) => setField<int>('angle', value);

  int? get exposition => getField<int>('exposition');
  set exposition(int? value) => setField<int>('exposition', value);

  int? get groundwater => getField<int>('groundwater');
  set groundwater(int? value) => setField<int>('groundwater', value);

  int? get acidity => getField<int>('acidity');
  set acidity(int? value) => setField<int>('acidity', value);

  int? get humus => getField<int>('humus');
  set humus(int? value) => setField<int>('humus', value);

  String? get structure => getField<String>('structure');
  set structure(String? value) => setField<String>('structure', value);

  int? get permeableLayerThickness =>
      getField<int>('permeable_layer_thickness');
  set permeableLayerThickness(int? value) =>
      setField<int>('permeable_layer_thickness', value);

  int? get skeleton => getField<int>('skeleton');
  set skeleton(int? value) => setField<int>('skeleton', value);

  int? get nitrogen => getField<int>('nitrogen');
  set nitrogen(int? value) => setField<int>('nitrogen', value);

  int? get phosphorus => getField<int>('phosphorus');
  set phosphorus(int? value) => setField<int>('phosphorus', value);

  int? get potassium => getField<int>('potassium');
  set potassium(int? value) => setField<int>('potassium', value);

  int? get magnesium => getField<int>('magnesium');
  set magnesium(int? value) => setField<int>('magnesium', value);

  int? get calcium => getField<int>('calcium');
  set calcium(int? value) => setField<int>('calcium', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);
}
