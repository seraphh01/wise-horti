import '../database.dart';

class PlantTable extends SupabaseTable<PlantRow> {
  @override
  String get tableName => 'plant';

  @override
  PlantRow createRow(Map<String, dynamic> data) => PlantRow(data);
}

class PlantRow extends SupabaseDataRow {
  PlantRow(super.data);

  @override
  SupabaseTable get table => PlantTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get popularName => getField<String>('popular_name');
  set popularName(String? value) => setField<String>('popular_name', value);

  String? get scientificName => getField<String>('scientific_name');
  set scientificName(String? value) =>
      setField<String>('scientific_name', value);

  int? get freezeTemperature => getField<int>('freeze_temperature');
  set freezeTemperature(int? value) =>
      setField<int>('freeze_temperature', value);

  int? get maxTemperature => getField<int>('max_temperature');
  set maxTemperature(int? value) => setField<int>('max_temperature', value);

  int? get optimumMinTemperture => getField<int>('optimum_min_temperture');
  set optimumMinTemperture(int? value) =>
      setField<int>('optimum_min_temperture', value);

  int? get optimumMaxTemperature => getField<int>('optimum_max_temperature');
  set optimumMaxTemperature(int? value) =>
      setField<int>('optimum_max_temperature', value);

  int? get optimumYearPrecipitation =>
      getField<int>('optimum_year_precipitation');
  set optimumYearPrecipitation(int? value) =>
      setField<int>('optimum_year_precipitation', value);

  int? get fieldAngle => getField<int>('field_angle');
  set fieldAngle(int? value) => setField<int>('field_angle', value);

  int? get exposition => getField<int>('exposition');
  set exposition(int? value) => setField<int>('exposition', value);

  int? get groundwaterDepth => getField<int>('groundwater_depth');
  set groundwaterDepth(int? value) => setField<int>('groundwater_depth', value);

  String? get texture => getField<String>('texture');
  set texture(String? value) => setField<String>('texture', value);

  int? get acidity => getField<int>('acidity');
  set acidity(int? value) => setField<int>('acidity', value);

  int? get humus => getField<int>('humus');
  set humus(int? value) => setField<int>('humus', value);

  int? get nitrogen => getField<int>('nitrogen');
  set nitrogen(int? value) => setField<int>('nitrogen', value);

  int? get phosphorus => getField<int>('phosphorus');
  set phosphorus(int? value) => setField<int>('phosphorus', value);

  int? get potassium => getField<int>('potassium');
  set potassium(int? value) => setField<int>('potassium', value);

  int? get calcium => getField<int>('calcium');
  set calcium(int? value) => setField<int>('calcium', value);

  int? get magnesium => getField<int>('magnesium');
  set magnesium(int? value) => setField<int>('magnesium', value);

  String? get skeleton => getField<String>('skeleton');
  set skeleton(String? value) => setField<String>('skeleton', value);

  int? get underlayerThickness => getField<int>('underlayer_thickness');
  set underlayerThickness(int? value) =>
      setField<int>('underlayer_thickness', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
