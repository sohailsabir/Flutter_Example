import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List _fruits = ["Apple", "Banana", "Pineapple", "Mango", "Grapes"];


  String selectedFruit;
  List<DropdownMenuItem<String>> dropDownMenuItems;
  MyAppState({required this.dropDownMenuItems,required this.selectedFruit});
  @override
  void initState() {

    dropDownMenuItems = buildAndGetDropDownMenuItems(_fruits);
    selectedFruit = dropDownMenuItems[0].value!;
    super.initState();
  }

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List fruits) {
    List<DropdownMenuItem<String>> items = [];
    for (String fruit in fruits) {
      items.add(DropdownMenuItem(value: fruit, child: Text(fruit)));
    }
    return items;
  }

  void changedDropDownItem(String selectedFruit) {
    setState(() {
      selectedFruit = selectedFruit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DropDown Button Example"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Please choose a fruit: "),
              DropdownButton(
                value: selectedFruit,
                items: dropDownMenuItems,
                onChanged: dropDownMenuItems,
              )
            ],
          )),
        ),
      ),
    );
  }
}
