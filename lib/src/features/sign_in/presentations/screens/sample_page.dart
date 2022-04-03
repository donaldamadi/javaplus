import 'package:finance/core/utils/local_storage.dart';
import 'package:finance/src/features/sign_in/presentations/controllers/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  String? username = "";
  String? password = "";
  SignInController controller = Get.put(SignInController());

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await getLocalDetails();
    });
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("closing page");
    // myFunction();
    super.dispose();
  }

  getLocalDetails() async {
    username = await LocalStorage().getUsername();
    password = await LocalStorage().getPassword();
    debugPrint("Gotten username");
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Page"),
      ),
      body: Column(
        children: [
          Text(
            username!,
            style: TextStyle(fontSize: 30),
          ),
          Text(password!),
        ],
      ),
    );
  }
}
