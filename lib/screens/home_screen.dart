import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/models/destination_models.dart';
import 'package:travel_ui/widgets/destination_carsoul.dart';

import '../widgets/hotel_carasoul.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _selectedindex = 0;
int _currentTab = 0;

class _HomeScreenState extends State<HomeScreen> {
  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedindex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: Theme.of(context).hintColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedindex == index
              ? Theme.of(context).primaryColor
              : const Color(0xffb4c1c4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'what would you like to find',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Destination_carsoul(),
            SizedBox(
              height: 20.0,
            ),
            Hotelcarsoul(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              label: ('')),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pizza),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://media.gettyimages.com/id/846730696/photo/portrait-teenager.jpg?s=1024x1024&w=gi&k=20&c=kUSXqrLt0Q8pG5myDzEc0JYppzvCrbm796rg88EaTgQ='),
            ),
            label: '',
          ),
        ],
        onTap: (int index) {
         setState(() {
           _currentTab=index;
         });
          // Do something when a tab is tapped
        },
      ),
    );
  }
}
