import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/model.dart';


class GetInformationRepository{
  getInformation({required String name}) async {
    try{
      final url = Uri.parse('https://api.genderize.io/?name=$name');
      final res = await http.get(url);
      dynamic data = jsonDecode(res.body);
      Name names = Name.fromJson(data);
      return names;
    }catch(e){
      print(e);
    }
  }
}