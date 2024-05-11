import 'package:flutter/material.dart';
// import 'package:project_1/main2.dart';

void main() {
  runApp(Project());
}

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                maxRadius: 23,
                child: const Icon(
                  Icons.person,
                  size: 35,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SHAHZAIB',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Good Morning!',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.notifications,
                size: 30,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your Total Balance',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money_sharp,
                              size: 30,
                              color: Colors.green[400],
                            ),
                            Text(
                              '7,899.00',
                              style: TextStyle(
                                color: Colors.green[400],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hide  ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.visibility_off_outlined,
                              size: 15,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              buildButtonRow(),
              SizedBox(height: 30),
              Text(
                ' Recent Transactions',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 10),
              ),
              Container(
                child: transactionWidget(
                  icon: Icons.call_received,
                  title: 'From Ahmad Mughal',
                  subtitle: '20 Jan 2024 at 10:00 PM',
                  amount: '+\$3,456.00',
                  color: Color.fromRGBO(148, 209, 190, 1),
                ),
              ),
              SizedBox(height: 10),
              transactionWidget(
                icon: Icons.arrow_outward_rounded,
                title: 'To Sara Gujjar',
                subtitle: '20 Jan 2024 at 10:00 PM',
                amount: '+\$3,456.00',
                color: Color.fromRGBO(73, 160, 120, 1),
              ),
              SizedBox(height: 10),
              transactionWidget(
                icon: Icons.arrow_outward_rounded,
                title: 'To Mailchimp',
                subtitle: '20 Jan 2024 at 10:00 PM',
                amount: '+\$3,456.00',
                color: Color.fromRGBO(73, 160, 120, 1),
              ),
              SizedBox(height: 10),
              transactionWidget(
                icon: Icons.call_received,
                title: 'From Ahmad Mughal',
                subtitle: '20 Jan 2024 at 10:00 PM',
                amount: '+\$3,456.00',
                color: Color.fromRGBO(148, 209, 190, 1),
              ),
              SizedBox(height: 10),
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
                    color: Color.fromRGBO(73, 160, 120, 1),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.swap_horiz_rounded,
                    size: 27,
                    color: Color.fromRGBO(62, 60, 60, 1),
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

  Widget buildButtonRow() {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildElevatedButton('Send', Color.fromARGB(135, 0, 131, 55)),
          SizedBox(width: 5),
          buildElevatedButton('Receive', Color.fromARGB(104, 139, 255, 187)),
          SizedBox(width: 5),
          buildElevatedButton('Swap', Color.fromARGB(79, 133, 1, 151)),
          SizedBox(width: 5),
          buildElevatedButton('Deposit', Color.fromARGB(255, 0, 0, 0)),
        ],
      ),
    );
  }

  Widget buildElevatedButton(String label, Color color) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(fontSize: 10, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(90, 45),
        shadowColor: Color.fromARGB(66, 0, 155, 75),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget transactionWidget({
    required IconData icon,
    required String title,
    required String subtitle,
    required String amount,
    required Color color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color.fromRGBO(170, 170, 170, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
