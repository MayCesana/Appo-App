
import 'package:Appo/models/colors.dart';
import 'package:Appo/screens/business_list_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profil_screen.dart';

class TabsScreen extends StatefulWidget {

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  List<Map<String, Object>> _pages = [
    {'page': HomeScreen(), 'title': 'Home'},
    {'page': ProfileScreen(), 'title': 'Profile'},    
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Appo', style: TextStyle(fontWeight: FontWeight.bold, color: Palette.kToDark[800], fontSize: 24),),
          Image.asset('assets/images/logo.JPG', width: 50, height: 50,),
          
          //Drawer(backgroundColor: Palette.kToDark[800], child: Icon(Icons.line_style, color: Palette.kToDark[800],))
            ],
          ),
         ),
        
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Theme.of(context).canvasColor,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30,),
              label: ''
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30,),
              label: ''
              ),
          ],
        ),
    );
  }
}