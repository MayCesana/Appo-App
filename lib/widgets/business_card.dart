import 'package:flutter/material.dart';
import '../models/Business.dart';
import '../screens/business_details_screen.dart';
import '../models/type.dart';

//Business card for businesses list (search page)
class BusinessCard extends StatelessWidget {
  final Business business;

  BusinessCard(this.business);

  String get ServiceTypeText {
    switch(business.serviceType)
    {
      case ServiceType.Salon:
        return 'Salon';
        break;
      case ServiceType.Barber:
        return 'Barber';
        break;
      case ServiceType.Doctor:
        return 'Doctor';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectCard(BuildContext ctx)
  {
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(builder: (_) {
    //     return BusinessDetailsScreen(business);
    //     }
    //   ),
    // );
    Navigator.of(ctx).pushNamed(BusinessDetailsScreen.routeName, arguments: business.id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCard(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Stack(children: [
              ClipRRect(
                borderRadius: 
                BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  ),
                child: Image.network(business.imageUrl, 
                  height: 250,
                  width: double.infinity, 
                  fit: BoxFit.cover)
              ),
              Positioned(
                bottom: 20, right: 10,
                child: Container(width: 300, 
                color: Colors.black54, 
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(business.name, style: 
                    TextStyle(
                      fontSize: 26,
                      color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                ),
              )
            ],
          ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(children: [
                    Icon(Icons.map),
                    SizedBox(width: 6,),
                    Text('${business.address}, ${business.city}')
                  ],),
                  Row(children: [
                    Icon(Icons.phone,),
                    SizedBox(width: 6,),
                    Text('${business.phoneNumber}')
                  ]),
                  Row(children: [
                    Icon(Icons.store,),
                    SizedBox(width: 6,),
                    Text('${ServiceTypeText}')
                  ]),
              ],),
            )
        ],)
      ),
    );
  }
}