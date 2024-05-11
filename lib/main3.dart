import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool _isFrozen = false; // Add this line to hold the state of the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
        title: const Text(
          'Cards',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(23),
            height: 245,
            width: 460,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 29, 181, 36),
                  Color.fromARGB(255, 168, 168, 168),
                ],
              ),
              borderRadius: BorderRadius.circular(23),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Allied Supreme Bank',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 134,
                        ),
                        Image.asset('assets/icons/logo.svg'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '5322 2596 2153 2368',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Column(
                          children: [
                            Text(
                              'Card Holder Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Shahzaib',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 46,
                        ),
                        const Column(
                          children: [
                            Text(
                              'Expired Date',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '05/25',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                        Image.asset(
                          'assets/icons/mastercard.svg',
                          height: 45,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Color.fromARGB(255, 168, 168, 168),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(12)),
                    Image.asset('assets/icons/freeze.svg'),
                    const SizedBox(
                      width: 23,
                    ),
                    const Text(
                      'Freeze!',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 175,
                    ),
                    Switch(
                      value: _isFrozen,
                      onChanged: (bool newValue) {
                        setState(() {
                          _isFrozen = newValue;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 0, 0),
                  Color.fromARGB(255, 168, 168, 168),
                ],
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.all(12)),
                Image.asset('assets/icons/de.svg'),
                const SizedBox(
                  width: 23,
                ),
                const Text(
                  'Deactive!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 154,
                ),
                Switch(
                  value: _isFrozen,
                  onChanged: (bool newValue) {
                    setState(() {
                      _isFrozen = newValue;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 23,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Column(
                children: [
                  Text(
                    'Monthly Budget',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Text(
                    'May 2023 current',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
              SizedBox(
                width: 180,
              ),
              Column(
                children: [
                  Text(
                    '\$1,456',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Text(
                    '\$560 left',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Column(
                children: [
                  Text(
                    'Previous Month',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Text(
                    'April 2023',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
              SizedBox(
                width: 180,
              ),
              Column(
                children: [
                  Text(
                    '\$1,420',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  Text(
                    '\$10left',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Settings',
          ),
        ],
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
