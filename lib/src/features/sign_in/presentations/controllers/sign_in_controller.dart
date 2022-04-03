import 'package:finance/core/utils/local_storage.dart';
import 'package:finance/src/features/sign_in/domain/sign_in_services.dart';
import 'package:finance/src/features/sign_in/presentations/screens/sample_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

  validateDetails() {
    if (emailController.text.isEmpty && passwordController.text.isEmpty) {
      Get.snackbar("Error", "Please input your details",
          snackPosition: SnackPosition.BOTTOM);
    } else if (!GetUtils.isEmail(emailController.text)) {
      Get.snackbar("Error", "Please input a valid email",
          snackPosition: SnackPosition.BOTTOM);
    } else if (passwordController.text.isEmpty) {
      Get.snackbar("Error", "Please input a valid password",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      saveDetails();
    }
  }

  saveDetails() async {
    LocalStorage().setUsername(emailController.text);
    LocalStorage().setPassword(passwordController.text);

    goToNextPage();
  }

  goToNextPage() {
    Navigator.push(
        Get.context!, MaterialPageRoute(builder: (context) => DummyPage()));
  }

  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   super.onReady();
  // }

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.pixels !=
          scrollController.position.maxScrollExtent) {
        // isNot
      }
    });
  }
}
