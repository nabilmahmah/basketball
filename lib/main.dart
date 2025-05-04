// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(basketball());
}

class basketball extends StatefulWidget {
  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(child: Text("point counter")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // TeamA(teamAPoints),
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 40)),
                    Text("$teamAPoints", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 40,
                    color: Colors.grey,
                    thickness: 1.5,
                  ),
                ),
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 40)),
                    Text("$teamBPoints", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 50),
                ),
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget  TeamA(int teamAPoints) {
  //   return Column(
  //     children: [
  //       Text("Team A", style: TextStyle(fontSize: 40)),
  //       Text("$teamAPoints", style: TextStyle(fontSize: 150)),
  //       ElevatedButton(
  //         onPressed: () {
  //           setState(() {
  //             teamAPoints++;
  //           });
  //         },
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: Colors.orange,
  //           minimumSize: Size(150, 50),
  //         ),
  //         child: Text(
  //           "Add 1 point",
  //           style: TextStyle(color: Colors.black, fontSize: 18),
  //         ),
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 20),
  //         child: ElevatedButton(
  //           onPressed: () {
  //             setState(() {
  //               teamAPoints+=2;
  //             });
  //           },
  //           style: ElevatedButton.styleFrom(
  //             backgroundColor: Colors.orange,
  //             minimumSize: Size(150, 50),
  //           ),
  //           child: Text(
  //             "Add 2 point",
  //             style: TextStyle(color: Colors.black, fontSize: 18),
  //           ),
  //         ),
  //       ),
  //       ElevatedButton(
  //         onPressed: () {
  //           setState(() {
  //             teamAPoints+=3;
  //           });
  //         },
  //         style: ElevatedButton.styleFrom(
  //           backgroundColor: Colors.orange,
  //           minimumSize: Size(150, 50),
  //         ),
  //         child: Text(
  //           "Add 3 point",
  //           style: TextStyle(color: Colors.black, fontSize: 18),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Widget TeamB(int teamBPoints) {
  //     return Column(
  //       children: [
  //         Text("Team B", style: TextStyle(fontSize: 40)),
  //         Text("$teamBPoints", style: TextStyle(fontSize: 150)),
  //         ElevatedButton(
  //           onPressed: () {
  //             setState(() {
  //               teamBPoints++;
  //             });
  //           },
  //           style: ElevatedButton.styleFrom(
  //             backgroundColor: Colors.orange,
  //             minimumSize: Size(150, 50),
  //           ),
  //           child: Text(
  //             "Add 1 point",
  //             style: TextStyle(color: Colors.black, fontSize: 18),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.symmetric(vertical: 20),
  //           child: ElevatedButton(
  //             onPressed: () {
  //               setState(() {
  //                 teamBPoints+=2;
  //               });
  //             },
  //             style: ElevatedButton.styleFrom(
  //               backgroundColor: Colors.orange,
  //               minimumSize: Size(150, 50),
  //             ),
  //             child: Text(
  //               "Add 2 point",
  //               style: TextStyle(color: Colors.black, fontSize: 18),
  //             ),
  //           ),
  //         ),
  //         ElevatedButton(
  //           onPressed: () {
  //             setState(() {
  //               teamBPoints+=3;
  //             });
  //           },
  //           style: ElevatedButton.styleFrom(
  //             backgroundColor: Colors.orange,
  //             minimumSize: Size(150, 50),
  //           ),
  //           child: Text(
  //             "Add 3 point",
  //             style: TextStyle(color: Colors.black, fontSize: 18),
  //           ),
  //         ),
  //       ],
  //     );
  //   }
  //
}
