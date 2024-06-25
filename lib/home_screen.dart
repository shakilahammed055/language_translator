import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var languages = ["Bengali","English","Chinese"];
  var originLanguage = "From";
  var destinationLanguage = "to";
  var output = "";
  TextEditingController languageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10223D),
      appBar: AppBar(
        title: Text("Language Translator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff10223D),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton(
                    focusColor: Colors.white,
                      iconDisabledColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      hint: Text(
                        originLanguage,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items: languages.map((String dropDownStringItem) {
                       return DropdownMenuItem(child: Text(dropDownStringItem),
                        value: dropDownStringItem,
                      );
                  }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        originLanguage= value!;
                      });
                    },
                  ),
                  SizedBox(width: 40),
                  Icon(Icons.arrow_right_alt_outlined,color: Colors.white,size: 40),
                  SizedBox(width: 40),
                  DropdownButton(
                    focusColor: Colors.white,
                    iconDisabledColor: Colors.white,
                    iconEnabledColor: Colors.white,
                    hint: Text(
                      destinationLanguage,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items: languages.map((String dropDownStringItem) {
                      return DropdownMenuItem(child: Text(dropDownStringItem),
                        value: dropDownStringItem,
                      );
                    }).toList(),
                    onChanged: (String? value){
                      setState(() {
                        destinationLanguage = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(padding: EdgeInsets.all(8),
              child: TextFormField(
                cursorColor: Colors.white,
                autofocus: false,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  labelText: "please enter your text",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 1),
                  ),
                  errorStyle: TextStyle(color: Colors.red,fontSize: 15),

                ),
                controller: languageController,
                validator: (value){
                  if(value==null ||value.isEmpty){
                    return "Please enter text to translate";
                  }
                  return null;
                },
              ),
              ),
              Padding(padding: EdgeInsets.all(8),

              ),

              Row(

              )
            ],
          ),
        ),
      ),
    );
  }
}
