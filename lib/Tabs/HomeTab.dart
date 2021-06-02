import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = 1;
                  });
                },
                child: rowOptions(
                    Icons.wheelchair_pickup,
                    "Armchair",
                    selectedOption == 1 ? Colors.black : Colors.grey[200],
                    selectedOption == 1 ? Colors.white : Colors.black),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = 2;
                  });
                },
                child: rowOptions(
                    Icons.king_bed,
                    "Bed",
                    selectedOption == 2 ? Colors.black : Colors.grey[200],
                    selectedOption == 2 ? Colors.white : Colors.black),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = 3;
                  });
                },
                child: rowOptions(
                    Icons.lightbulb,
                    "Lamp",
                    selectedOption == 3 ? Colors.black : Colors.grey[200],
                    selectedOption == 3 ? Colors.white : Colors.black),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = 4;
                  });
                },
                child: rowOptions(
                    Icons.wheelchair_pickup,
                    "Chair",
                    selectedOption == 4 ? Colors.black : Colors.grey[200],
                    selectedOption == 4 ? Colors.white : Colors.black),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = 5;
                  });
                },
                child: rowOptions(
                    Icons.king_bed,
                    "Bench",
                    selectedOption == 5 ? Colors.black : Colors.grey[200],
                    selectedOption == 5 ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "147 products",
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
              Text(
                "Most Popular ▼",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
              4,
              (index) {
                return Center(
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage("assets/chair.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 5),
                            alignment: Alignment.centerLeft,
                            child: Text("Tortor Chair"),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "256.00",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "*",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }

  Widget rowOptions(
      IconData icon, String text, Color bgColor, Color textColor) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: bgColor),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: textColor,
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
