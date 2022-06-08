import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int? groupValue;
  static const List<String> selections = <String>[
    'Tiếng Việt',
    'Tiếng Anh'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riêng tư',
          style: TextStyle(
              fontSize: 23, fontFamily: "Lato", color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffBCFEFE)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 15),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10,bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Chọn ngôn ngữ cho ứng dụng của bạn",
                    ),
                  )),
              Flexible(
                child: Container(
                  height: 150,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only( top: 2),
                        child: Container(
                          height: 60,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(10),
                            color: const Color(0xffFFFFFF),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Radio<int>(
                                  value: index,
                                  groupValue: groupValue,
                                  toggleable: true,
                                  onChanged: (int? value) {
                                    setState(() {
                                      groupValue = value;
                                    });
                                  }),
                              Text(selections[index], style: TextStyle(fontFamily: "Lato",
                              fontSize: 18),),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: selections.length,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 90),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff0C5776),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: Center(
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {

                      },
                      child: const Text(
                        "Xác nhận",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16, fontFamily: "Lato"),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
