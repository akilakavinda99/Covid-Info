import 'dart:convert';
import 'package:covid_info/generated/json/base/json_field.dart';
import 'package:covid_info/generated/json/info_entity.g.dart';

@JsonSerializable()
class InfoEntity {

	late bool success;
	late String message;
	late InfoData data;
  
  InfoEntity();

  factory InfoEntity.fromJson(Map<String, dynamic> json) => $InfoEntityFromJson(json);

  Map<String, dynamic> toJson() => $InfoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class InfoData {

	@JSONField(name: "update_date_time")
	late String updateDateTime;
	@JSONField(name: "local_new_cases")
	late int localNewCases;
	@JSONField(name: "local_total_cases")
	late int localTotalCases;
	@JSONField(name: "local_total_number_of_individuals_in_hospitals")
	late int localTotalNumberOfIndividualsInHospitals;
	@JSONField(name: "local_deaths")
	late int localDeaths;
	@JSONField(name: "local_recovered")
	late int localRecovered;
	@JSONField(name: "global_new_cases")
	late int globalNewCases;
	@JSONField(name: "global_total_cases")
	late int globalTotalCases;
	@JSONField(name: "global_deaths")
	late int globalDeaths;
	@JSONField(name: "global_recovered")
	late int globalRecovered;
	@JSONField(name: "hospital_data")
	late List<dynamic> hospitalData;
  
  InfoData();

  factory InfoData.fromJson(Map<String, dynamic> json) => $InfoDataFromJson(json);

  Map<String, dynamic> toJson() => $InfoDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}