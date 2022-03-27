import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardModel {
  String? accountName;
  String? accountNumber;
  String? availableBalance;
  String? bookBalance;

  CardModel(
      {this.accountName,
      this.accountNumber,
      this.availableBalance,
      this.bookBalance});
}

class AdModel {
  String image;

  AdModel(this.image);
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextStyle cardTextstyle = TextStyle(color: Colors.white);

  List adList = [
    AdModel("assets/images/saha.png"),
    AdModel("assets/images/sample.jpg"),
    AdModel("assets/images/PTv5p.jpg"),
  ];

  List accountList = [
    CardModel(
        accountName: "David",
        accountNumber: "0235160672",
        availableBalance: "100,000,000",
        bookBalance: "999,999"),
    CardModel(
        accountName: "Donald",
        accountNumber: "0235160672",
        availableBalance: "100,000,000",
        bookBalance: "999,999"),
    CardModel(
        accountName: "Femi",
        accountNumber: "0235160672",
        availableBalance: "100,000,000",
        bookBalance: "999,999"),
    CardModel(
        accountName: "Okoro",
        accountNumber: "0235160672",
        availableBalance: "100,000,000",
        bookBalance: "999,999"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                height: 200,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/images/header-logo.png",
                          height: 100,
                          width: 100,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          height: 100,
                          width: 200,
                          //
                          child: CarouselSlider(
                              items: accountList
                                  .map(
                                    (item) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(item.accountName,
                                            style: cardTextstyle),
                                        Text(item.accountNumber,
                                            style: cardTextstyle),
                                        Text(item.availableBalance,
                                            style: cardTextstyle.copyWith(
                                                fontSize: 20)),
                                        Text(item.bookBalance,
                                            style: cardTextstyle),
                                      ],
                                    ),
                                  )
                                  .toList(),
                              options: CarouselOptions())),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          FeatureHolder(
                              text: "Rewards & Referral",
                              onTap: () {},
                              icon: Icons.money),
                          FeatureHolder(
                              text: "POS FastPay",
                              onTap: () {},
                              icon: Icons.podcasts_sharp),
                          FeatureHolder(
                              text: "Access Transfers",
                              onTap: () {},
                              icon: Icons.transfer_within_a_station),
                          FeatureHolder(
                              text: "Other Bank Transfers",
                              onTap: () {},
                              icon: Icons.food_bank),
                        ],
                      ),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () => debugPrint("show more"),
                        child: Column(
                          children: const [
                            Text(
                              "Show All",
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // height: 300,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: CarouselSlider(
                    items: adList
                        .map((item) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(item.image))),
                            ))
                        .toList(),
                    options: CarouselOptions()),
                height: 200,
                width: Get.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class ScrollableAd extends StatelessWidget {
  const ScrollableAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height:
        );
  }
}

class FeatureHolder extends StatelessWidget {
  String text;
  VoidCallback onTap;
  IconData icon;

  FeatureHolder({required this.text, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        onTap: () => onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.blue.withOpacity(0.2),
          ),
          height: 100,
          width: 80,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                SizedBox(height: 10),
                Text(
                  text,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
