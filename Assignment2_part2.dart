import 'package:flutter/material.dart';
import 'colors.dart';

class IotApp extends StatefulWidget {
  IotApp({Key? key}) : super(key: key);

  @override
  createState() {
    return IotStateKeeper();
  }
}

class IotStateKeeper extends State<IotApp> {
  static String gateSwitchValue = "• OFF";
  static String plugAmmarValue = "• OFF";
  static String parkingLightValue = "• OFF";
  static String plugPatioValue = "• OFF";
  static String bridgeValue = "• OFF";
  static String kitchenValue = "• OFF";
  static String bedroomValue = "• OFF";

  static bool _gateSwitchValue = false;
  static bool _plugAmmarValue = false;
  static bool _parkingLightValue = false;
  static bool _bedRoomsValue = false; // kitchen
  static bool _bridgeValue = false;
  static bool _kitchenValue = false;

  // static final topContainer =

  // final clean =

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '1817733 Flutter layout',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: const Color.fromARGB(255, 173, 168, 168)),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.bed)),
                  Tab(icon: Icon(Icons.dining)),
                ],
              ),
              title: const Text('Tabs Demo'),
            ),
            body: TabBarView(
              children: [
                CustomScrollView(primary: false, slivers: <Widget>[
                  SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.toggle_on,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_gateSwitchValue) {
                                                gateSwitchValue = "• ON";
                                                _gateSwitchValue = true;
                                              } else {
                                                gateSwitchValue = "• OFF";
                                                _gateSwitchValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Gate No 2 Light Switch ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(gateSwitchValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.power,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_parkingLightValue) {
                                                parkingLightValue = "• ON";
                                                _parkingLightValue = true;
                                              } else {
                                                parkingLightValue = "• OFF";
                                                _parkingLightValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Parking Lights ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(parkingLightValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ]))
                ]),
                CustomScrollView(primary: false, slivers: <Widget>[
                  SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.countertops,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_kitchenValue) {
                                                kitchenValue = "• ON";
                                                _kitchenValue = true;
                                              } else {
                                                kitchenValue = "• OFF";
                                                _kitchenValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Kitchen Appliances ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(kitchenValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.power,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_parkingLightValue) {
                                                parkingLightValue = "• ON";
                                                _parkingLightValue = true;
                                              } else {
                                                parkingLightValue = "• OFF";
                                                _parkingLightValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Parking Lights ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(parkingLightValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ]))
                ]),
                CustomScrollView(primary: false, slivers: <Widget>[
                  SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.toggle_on,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_gateSwitchValue) {
                                                gateSwitchValue = "• ON";
                                                _gateSwitchValue = true;
                                              } else {
                                                gateSwitchValue = "• OFF";
                                                _gateSwitchValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Gate No 2 Light Switch ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(gateSwitchValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              shape:
                                                  const RoundedRectangleBorder(),
                                              backgroundColor:
                                                  Colors.green[500],
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      5, 15, 5, 15),
                                            ),
                                            child: const Icon(Icons.power,
                                                color: Colors.white, size: 20)),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            shape:
                                                const RoundedRectangleBorder(),
                                            backgroundColor: Colors.red,
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 15, 5, 15),
                                          ),
                                          child: const Icon(
                                              Icons.power_settings_new,
                                              color: Colors.white,
                                              size: 20),
                                          onPressed: () {
                                            setState(() {
                                              if (!_parkingLightValue) {
                                                parkingLightValue = "• ON";
                                                _parkingLightValue = true;
                                              } else {
                                                parkingLightValue = "• OFF";
                                                _parkingLightValue = false;
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    const Spacer(flex: 3),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 5, 70, 5),
                                          child: Text("Parking Lights ",
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              5, 5, 70, 5),
                                          child: Text(parkingLightValue,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ]))
                ]),
              ],
            ),
          ),
        ));
  }
}
