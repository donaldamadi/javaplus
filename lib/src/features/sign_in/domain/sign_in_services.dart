import 'dart:convert';

import 'package:finance/core/error_handler.dart';
import 'package:http/src/response.dart';

import '../../../../core/api.dart';
import '../../../../core/data.dart';

Future<Map<String, dynamic>> testWeatherApi () async {
  HttpRequests httpRequests = HttpRequests(
      url: NetworkData.forecast+"?lat=37.774929&lon=-122.419418&dt=1590094153",
      headers: networkData.setHeader(userBearer: true, extraHeader: {
        'X-RapidAPI-Host': 'community-open-weather-map.p.rapidapi.com',
        'X-RapidAPI-Key': 'b7bd7267a6mshc89b6738ddb4bc5p1b4a72jsn83533f48d50b'
      }));
  Response response = await httpRequests.get();
  print(response.body);
  ErrorHandler errorHandler = ErrorHandler(response: response);
  if (!errorHandler.hasError) {
    return Map<String, dynamic>.from(json.decode(response.body));
  } else {
    // toastError("An error occured, please try again", context);
    return {};
  }
}
