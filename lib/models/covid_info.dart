// To parse this JSON data, do
//
//     final info = infoFromJson(jsonString);

import 'dart:convert';

Info infoFromJson(String str) => Info.fromJson(json.decode(str));

String infoToJson(Info data) => json.encode(data.toJson());

class Info {
  Info({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Data? data;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    success: json["success"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.updateDateTime,
    this.localNewCases,
    this.localTotalCases,
    this.localTotalNumberOfIndividualsInHospitals,
    this.localDeaths,
    this.localRecovered,
    this.globalNewCases,
    this.globalTotalCases,
    this.globalDeaths,
    this.globalRecovered,
    required this.hospitalData,
  });

  DateTime? updateDateTime;
  int? localNewCases;
  int? localTotalCases;
  int? localTotalNumberOfIndividualsInHospitals;
  int? localDeaths;
  int? localRecovered;
  int? globalNewCases;
  int? globalTotalCases;
  int? globalDeaths;
  int? globalRecovered;
  List<dynamic> hospitalData;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    updateDateTime: DateTime.parse(json["update_date_time"]),
    localNewCases: json["local_new_cases"],
    localTotalCases: json["local_total_cases"],
    localTotalNumberOfIndividualsInHospitals: json["local_total_number_of_individuals_in_hospitals"],
    localDeaths: json["local_deaths"],
    localRecovered: json["local_recovered"],
    globalNewCases: json["global_new_cases"],
    globalTotalCases: json["global_total_cases"],
    globalDeaths: json["global_deaths"],
    globalRecovered: json["global_recovered"],
    hospitalData: List<dynamic>.from(json["hospital_data"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "update_date_time": updateDateTime?.toIso8601String(),
    "local_new_cases": localNewCases,
    "local_total_cases": localTotalCases,
    "local_total_number_of_individuals_in_hospitals": localTotalNumberOfIndividualsInHospitals,
    "local_deaths": localDeaths,
    "local_recovered": localRecovered,
    "global_new_cases": globalNewCases,
    "global_total_cases": globalTotalCases,
    "global_deaths": globalDeaths,
    "global_recovered": globalRecovered,
    "hospital_data": List<dynamic>.from(hospitalData.map((x) => x)),
  };
}
