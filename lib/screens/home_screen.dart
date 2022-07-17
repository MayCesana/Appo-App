import 'package:Appo/models/Business.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:Appo/models/Dummy_data.dart';
import 'package:Appo/widgets/myNext_item.dart';
import 'package:Appo/widgets/wrap_inkwell.dart';
import '../widgets/searchBar.dart';
import './business_list_screen.dart';
import '../screens/business_details_screen.dart';
import '../widgets/favorite_item.dart';


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class HomeScreen  extends StatefulWidget {
  
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  void itemClicked(BuildContext ctx, Business bis) 
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return BusinessDetailsScreen(bis);
      })
    );
    // Navigator.of(context).pushNamed(
    //   BusinessDetailsScreen.routeName,
    //   arguments: bis.id);
  }

  Widget buildSectionTitle(BuildContext context, String title){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15), 
      width: double.infinity, alignment: Alignment.topRight, height: 30,
      child: Text(title, 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
          ),
    );
  }

  void searchIconClick(BuildContext ctx)
  {
    print('clicked');
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return BusinessListScreen();
      })
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var PageHeight = size.height;
    var PageWidth = size.width;

    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: PageWidth/6, 
          child: SearchBar(() => searchIconClick(context))
        ),

        buildSectionTitle(context, 'התורים הקרובים שלי'),
    
        Container(height: PageHeight*0.35, width: double.infinity, alignment: Alignment.topRight,
          child: ListView(padding: const EdgeInsets.all(10), shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: DUMMY_FAV.map((bis) => 
            WrapInkWell(
              MyNextItem(bis), 
              () => itemClicked(context, bis))
              ).toList(),
              
            ),
        ),
    
        buildSectionTitle(context, 'עסקים שאהבתי'),

        Container(height: PageHeight*0.3, width: double.infinity, alignment: Alignment.topLeft,
          child: ListView.builder(
              itemBuilder: (ctx, index) =>  
                WrapInkWell(
                  FavoriteItem(DUMMY_BUSINESSES[index]), 
                  () => itemClicked(ctx, DUMMY_BUSINESSES[index])
                ),
              itemCount: DUMMY_BUSINESSES.length,
              padding: const EdgeInsets.all(10), shrinkWrap: true,
              scrollDirection: Axis.horizontal, 
              physics: const AlwaysScrollableScrollPhysics(), 
            ),
        ),
    
        ],
      ),
    );
  }
}