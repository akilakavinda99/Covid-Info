import 'package:covid_info/generated/json/base/json_convert_content.dart';
import 'package:covid_info/models/info_entity.dart';

InfoEntity $InfoEntityFromJson(Map<String, dynamic> json) {
	final InfoEntity infoEntity = InfoEntity();
	final bool? success = jsonConvert.convert<bool>(json['success']);
	if (success != null) {
		infoEntity.success = success;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		infoEntity.message = message;
	}
	final InfoData? data = jsonConvert.convert<InfoData>(json['data']);
	if (data != null) {
		infoEntity.data = data;
	}
	return infoEntity;
}

Map<String, dynamic> $InfoEntityToJson(InfoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['success'] = entity.success;
	data['message'] = entity.message;
	data['data'] = entity.data.toJson();
	return data;
}

InfoData $InfoDataFromJson(Map<String, dynamic> json) {
	final InfoData infoData = InfoData();
	final String? updateDateTime = jsonConvert.convert<String>(json['update_date_time']);
	if (updateDateTime != null) {
		infoData.updateDateTime = updateDateTime;
	}
	final int? localNewCases = jsonConvert.convert<int>(json['local_new_cases']);
	if (localNewCases != null) {
		infoData.localNewCases = localNewCases;
	}
	final int? localTotalCases = jsonConvert.convert<int>(json['local_total_cases']);
	if (localTotalCases != null) {
		infoData.localTotalCases = localTotalCases;
	}
	final int? localTotalNumberOfIndividualsInHospitals = jsonConvert.convert<int>(json['local_total_number_of_individuals_in_hospitals']);
	if (localTotalNumberOfIndividualsInHospitals != null) {
		infoData.localTotalNumberOfIndividualsInHospitals = localTotalNumberOfIndividualsInHospitals;
	}
	final int? localDeaths = jsonConvert.convert<int>(json['local_deaths']);
	if (localDeaths != null) {
		infoData.localDeaths = localDeaths;
	}
	final int? localRecovered = jsonConvert.convert<int>(json['local_recovered']);
	if (localRecovered != null) {
		infoData.localRecovered = localRecovered;
	}
	final int? globalNewCases = jsonConvert.convert<int>(json['global_new_cases']);
	if (globalNewCases != null) {
		infoData.globalNewCases = globalNewCases;
	}
	final int? globalTotalCases = jsonConvert.convert<int>(json['global_total_cases']);
	if (globalTotalCases != null) {
		infoData.globalTotalCases = globalTotalCases;
	}
	final int? globalDeaths = jsonConvert.convert<int>(json['global_deaths']);
	if (globalDeaths != null) {
		infoData.globalDeaths = globalDeaths;
	}
	final int? globalRecovered = jsonConvert.convert<int>(json['global_recovered']);
	if (globalRecovered != null) {
		infoData.globalRecovered = globalRecovered;
	}
	final List<dynamic>? hospitalData = jsonConvert.convertListNotNull<dynamic>(json['hospital_data']);
	if (hospitalData != null) {
		infoData.hospitalData = hospitalData;
	}
	return infoData;
}

Map<String, dynamic> $InfoDataToJson(InfoData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['update_date_time'] = entity.updateDateTime;
	data['local_new_cases'] = entity.localNewCases;
	data['local_total_cases'] = entity.localTotalCases;
	data['local_total_number_of_individuals_in_hospitals'] = entity.localTotalNumberOfIndividualsInHospitals;
	data['local_deaths'] = entity.localDeaths;
	data['local_recovered'] = entity.localRecovered;
	data['global_new_cases'] = entity.globalNewCases;
	data['global_total_cases'] = entity.globalTotalCases;
	data['global_deaths'] = entity.globalDeaths;
	data['global_recovered'] = entity.globalRecovered;
	data['hospital_data'] =  entity.hospitalData;
	return data;
}