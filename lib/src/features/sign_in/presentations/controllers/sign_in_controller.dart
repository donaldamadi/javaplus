import 'package:finance/src/features/sign_in/domain/sign_in_services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  RxString cityName = "".obs;
  RxMap<String, dynamic> response = <String, dynamic>{}.obs;
  RxList weatherList = [].obs;
  ScrollController scrollController = ScrollController();

  getApi() async {
    response.value = await testWeatherApi();
    weatherList.value = response.value["list"];
    cityName.value = response.value["city"]["name"];
    debugPrint(response["cod"].toString());
  }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.pixels != scrollController.position.maxScrollExtent) {
        // isNot
      }
    });
  }
}
