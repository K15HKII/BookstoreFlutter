import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'price_card_big.dart';
import 'search_bar.dart';

class KhoSachMainMenu extends StatefulWidget {
  const KhoSachMainMenu({Key? key}) : super(key: key);

  @override
  State<KhoSachMainMenu> createState() => _KhoSachMainMenuState();
}

class _KhoSachMainMenuState extends State<KhoSachMainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBCFEFE),
      body: Column(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 99,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Container(
                      width: 241,
                      height: 51,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(90, 0, 0, 0),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          const IconButton(
                              icon: Icon(Icons.search), onPressed: null),
                          const SizedBox(
                            width: 140,
                            height: 51,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Tìm kiếm",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                              height: 18,
                              width: 14,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assest/filtericon.png")),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            useRootNavigator: true,
                                            builder: (
                                              BuildContext context,
                                            ) {
                                              return const SearchPanel();
                                            });
                                      },
                                      child: const Text(''),
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      )),
                ),
                const SizedBox(
                  width: 17.88,
                ),
                Container(
                  height: 26,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/bellicon.png"),
                    ),
                  ),
                  child: Container(
                      child: TextButton(child: const Text(""), onPressed: () {})),
                ),
                const SizedBox(
                  width: 19.22,
                ),
                Container(
                  height: 26.67,
                  width: 26.68,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assest/shoppingcarticon.png"),
                    ),
                  ),
                  child: Container(
                      child: TextButton(child: const Text(""), onPressed: () {})),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23.5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 37,
              child: const Text(
                "Kho sách",
                style: TextStyle(fontFamily: "Lato", fontSize: 31),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 514,
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: <Widget>[
                    ButtonsTabBar(
                        backgroundColor: const Color(0xff001C44),
                        unselectedBackgroundColor: const Color(0xffCDD6D9),
                        labelStyle: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        unselectedLabelStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                        radius: 100,
                        tabs: const [
                          Tab(
                            child: SizedBox(
                              width: 56,
                              height: 36,
                              child: Icon(Icons.home),
                            ),
                          ),
                          Tab(
                              child: SizedBox(
                                  width: 69,
                                  child: Text(
                                    "Tất cả",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: SizedBox(
                                  width: 87,
                                  child: Text(
                                    "Phổ biến",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: SizedBox(
                                  width: 83,
                                  child: Text(
                                    "Gần đây",
                                    textAlign: TextAlign.center,
                                  ))),
                          Tab(
                              child: SizedBox(
                                  width: 118,
                                  child: Text(
                                    "Dành cho tôi",
                                    textAlign: TextAlign.center,
                                  ))),
                        ]),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 425,
                      width: 350,
                      child: TabBarView(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 24, top: 16, bottom: 16),
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffBCFEFE)))),
                                    width: 350,
                                    height: 51,
                                    child: const Text(
                                      "Văn học",
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: "Lato"),
                                    ),
                                  ),
                                ],
                                scrollDirection: Axis.vertical,
                              ),
                            ),
                          ),
                          GridView.count(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(bottom: 200),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 12,
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 3,
                            children: <Widget>[
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("Con mèo đi hia",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                              SizedBox(
                                height: 260,
                                width: 172,
                                child: DesignCardWithStar("AAAAAAAAAa",
                                    "assest/testbg.jpg", 696969, 4.9),
                              ),
                            ],
                          ),
                          const Icon(Icons.directions_bike),
                          const Icon(Icons.directions_car),
                          const Icon(Icons.directions_transit),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: '',
          ),
        ],
      ),
    );
  }

// ···
}
