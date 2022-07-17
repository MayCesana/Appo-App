
import 'package:Appo/widgets/wrap_inkwell.dart';
import 'package:flutter/material.dart';
import '../models/Dummy_data.dart';
import '../models/Business.dart';
import '../screens/business_details_screen.dart';

class BusinessesList extends StatelessWidget {

  List<Business> _businesses; 

  BusinessesList()
  {
    _businesses = DUMMY_BUSINESSES;
  }

  void itemClicked(BuildContext ctx, Business bis) 
  {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return BusinessDetailsScreen(bis);
      })
    );
  }

  Widget businessListItem(BuildContext context, int index)
  {
    final int count = DUMMY_BUSINESSES.length > 10 ? 10 : DUMMY_BUSINESSES.length;

    return Container(
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            offset: const Offset(4, 4),
            blurRadius: 16,
          ),
        ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 2,
                    child: Image.network(
                    DUMMY_BUSINESSES[index].imageUrl, fit: BoxFit.cover,),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,           
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16, top: 8, bottom: 8),
                              child: Column(
                                mainAxisAlignment:MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(DUMMY_BUSINESSES[index].name, textAlign: TextAlign.left, style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22,),
                                      ),
                                  Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(DUMMY_BUSINESSES[index].phoneNumber,
                                              style: TextStyle(fontSize: 14, color: Colors.grey.withOpacity(0.8)),),
                                        const SizedBox(width: 4,),
                                        Icon(Icons.home, size: 12, color: Theme.of(context).primaryColor,),
                                        Expanded(
                                          child: Text(DUMMY_BUSINESSES[index].city, overflow: TextOverflow.ellipsis, style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey.withOpacity(0.8)),
                                                    ),
                                                  ),
                                        ],
                                      ),
                                      Padding(
                                        padding:const EdgeInsets.only(top: 4),
                                        child: Text(DUMMY_BUSINESSES[index].address),
                                      ),
                                    ],
                                  ),
                               ),
                              ),
                             ),
                            ],
                          ),
                        ),
                       ],
                     ),
                     Positioned(
                      top: 8, right: 8, child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            borderRadius: const BorderRadius.all(Radius.circular(32.0),),
                                            onTap: () {},
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                                child: Icon(Icons.favorite_border, color: Theme.of(context).primaryColor,),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                             );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _businesses.length, 
        padding: const EdgeInsets.only(top: 8),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
                              return Padding( 
                                padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 8, bottom: 16),
                                child: WrapInkWell(businessListItem(context, index), () => itemClicked(context, _businesses[index]))
                              );                 
            },
      );
  }
}