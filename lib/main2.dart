import 'package:flutter/material.dart';

class AddCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Cards",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 81,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(73, 160, 120, 0.7),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 7),
                    Icon(Icons.add),
                    Text("Add"),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCard("Ipoteka Bank", "9860 0101 2647 7396", "Shahzaib",
                        "10/28"),
                    SizedBox(width: 7),
                    buildCard("Ipoteka Bank", "9860 0101 2647 7396", "Shahzaib",
                        "10/28"),
                    SizedBox(width: 7),
                    buildCard("Ipoteka Bank", "9860 0101 2647 7396", "Shahzaib",
                        "10/28"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              buildSummaryContainer(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromRGBO(255, 255, 255, 1),
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.25),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 27,
                    color: Color.fromRGBO(62, 60, 60, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.swap_horiz_rounded,
                    size: 27,
                    color: Color.fromRGBO(73, 160, 120, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.analytics_outlined,
                    size: 27,
                    color: Color.fromRGBO(62, 60, 60, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    size: 27,
                    color: Color.fromRGBO(62, 60, 60, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String bankName, String cardNumber, String cardHolder,
      String expiryDate) {
    return Container(
      width: 341,
      height: 218,
      decoration: BoxDecoration(
        color: Colors.green,
        image: DecorationImage(image: AssetImage('assets/gradient.jpeg')),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bankName,
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            SizedBox(height: 15),
            Text(
              cardNumber,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Holder Name",
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                    Text(
                      cardHolder,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(width: 35),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expired Date",
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                    Text(
                      expiryDate,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSummaryContainer() {
    return Container(
      height: 158,
      width: 348,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 63, 225, 165)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Monthly Budget",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "May 2023 current",
                    style: TextStyle(color: Color(0xff777777), fontSize: 16),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "\$1,456",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$560 left",
                    style: TextStyle(color: Color(0xff777777), fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Previous Month",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "April 2023",
                    style: TextStyle(color: Color(0xff777777), fontSize: 16),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "\$1,456",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$560 left",
                    style: TextStyle(color: Color(0xff777777), fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
