import 'package:flutter/material.dart';

enum RadioValue { KFC, ChickenRepublic, Dominos, PizzaHut }

class CustomFields extends StatefulWidget {
  const CustomFields({Key? key}) : super(key: key);

  @override
  State<CustomFields> createState() => _CustomFieldsState();
}

class _CustomFieldsState extends State<CustomFields> {
  RadioValue? radioValue;
  bool isKFC = false;
  bool isChickenRepublic = false;
  bool isDominos = false;
  bool isPizzaHut = false;

  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Inputs"),
      ),
      //SingleChildScrollView allows to scroll the content of the widget when it does not fit within a page
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 150,
                      child: ListTile(
                        title: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              Text("KFC"),
                              Radio(
                                  value: RadioValue.KFC,
                                  groupValue: radioValue,
                                  onChanged: (RadioValue? val) {
                                    setState(() {
                                      radioValue = val;
                                    });
                                    debugPrint("$val");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 210,
                      child: ListTile(
                        title: SizedBox(
                          // width: 100,
                          child: Row(
                            children: [
                              Text("Chicken Republic"),
                              Radio(
                                  value: RadioValue.ChickenRepublic,
                                  groupValue: radioValue,
                                  onChanged: (RadioValue? val) {
                                    setState(() {
                                      radioValue = val;
                                    });
                                    debugPrint("$val");
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: SizedBox(
                        // width: 100,
                        child: Row(
                          children: [
                            Text("Dominos"),
                            Radio(
                                value: RadioValue.Dominos,
                                groupValue: radioValue,
                                onChanged: (RadioValue? val) {
                                  setState(() {
                                    radioValue = val;
                                  });
                                  debugPrint("$val");
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: SizedBox(
                        child: Row(
                          children: [
                            Text("Pizza Hut"),
                            Radio(
                                value: RadioValue.PizzaHut,
                                groupValue: radioValue,
                                onChanged: (RadioValue? val) {
                                  setState(() {
                                    radioValue = val;
                                  });
                                  debugPrint("$val");
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                children: [
                  Row(
                    children: [
                      Text("KFC"),
                      SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                          value: isKFC,
                          onChanged: (val) => setState(() {
                                isKFC = !isKFC;
                                debugPrint("$isKFC");
                              }))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Chicken Republic"),
                      SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                          value: isChickenRepublic,
                          onChanged: (val) => setState(() {
                                isChickenRepublic = !isChickenRepublic;
                                debugPrint("$isChickenRepublic");
                              }))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Dominos"),
                      SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                          value: isDominos,
                          onChanged: (val) => setState(() {
                                isDominos = !isDominos;
                                debugPrint("$isDominos");
                              }))
                    ],
                  ),
                  Row(
                    children: [
                      Text("Pizza Hut"),
                      SizedBox(
                        width: 10,
                      ),
                      Checkbox(
                          value: isPizzaHut,
                          onChanged: (val) => setState(() {
                                isPizzaHut = !isPizzaHut;
                                debugPrint("$isPizzaHut");
                              }))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: 100,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        elevation: 0,
                        isExpanded: true,
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
