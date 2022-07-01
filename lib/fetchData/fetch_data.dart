import 'package:covid_info/models/covid_info.dart';
import 'package:covid_info/static/static_values.dart';
import 'package:http/http.dart' as http;

class FetchData {
  Future<Info?> getData() async {
    var client = http.Client();
    var uri = Uri.parse(StaticValues.baseUrl);
    var response =  await client.get(uri);
    if(response.statusCode==200){
       var json = response.body;
       return infoFromJson(json);
    }
    return null;
  }
}
