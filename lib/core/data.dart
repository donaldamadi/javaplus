class NetworkData {
  static final baseUrl = "https://community-open-weather-map.p.rapidapi.com";

  Map<String, String> headers = {
    "Content-Type": "application/json",
  };

  Map<String, String> setHeader(
      {Map<String, String>? extraHeader,
      bool userBearer = false,
      bool userJson = false,
      String? token,
      String? body}) {
    final Map<String, String> newHeaders = headers;
    if (userBearer) newHeaders["Authorization"] = "Bearer $token";
    if (userJson) newHeaders["Content-Type"] = "application/json";
    if (userJson) newHeaders["accept"] = "application/json";
    newHeaders.addAll(extraHeader ?? {"": ""});
    return newHeaders;
  }

  static String forecast = baseUrl + '/climate/month';
  static String historicWeather = baseUrl + '/onecall/timemachine';
}

final networkData = NetworkData();
const userToken = "userToken";
const userEmail = "userEmail";
