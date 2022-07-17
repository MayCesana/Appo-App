import 'package:Appo/models/Dummy_data.dart';
import 'package:flutter/material.dart';
import '../models/Business.dart';

class MyNextItem extends StatelessWidget {
  final Business bis;

  MyNextItem(this.bis);

  Widget buildConstrainedBox(BuildContext context)
  {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return ConstrainedBox( 
        constraints: BoxConstraints(
            minHeight: 180,
            maxHeight: 200, minWidth: 200, maxWidth: 280),
        child: Stack(
          children: [
            //background container 
            Container(width: width, height: height, 
              padding: EdgeInsets.only(top: height/8, left: 20, right: 20, bottom: 20), 
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(gradient: LinearGradient(colors: [
                Theme.of(context).cardColor.withOpacity(1), 
                Theme.of(context).cardColor.withOpacity(0.8),
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15),
                boxShadow:[BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0.0, 0.75),
                      color: Colors.grey.withOpacity(0.5),),]
              ),
              child: Padding(padding: EdgeInsets.only(top:20), 
                //Text
                child: Column(
                  children:[
                    Text(bis.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('מחר, 10:00', style: TextStyle(fontSize: 14)),  
                    Text('${bis.address} | ${bis.city}', style: TextStyle(fontSize: 12)),  
                    ],
                  ),
                ),
            ),
    
            //Top image container
            Container(width: width, height: height/8, 
              padding: const EdgeInsets.only(top: 65, left: 20, right: 20, bottom: 20), 
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
                image: DecorationImage(image: NetworkImage(DUMMY_TYPES[2].imageUrl), fit: BoxFit.cover,))
              ),
            
            // circular logo 
            Center(
              // top: height/8 - 20 ,
              // right: width*0.5 - 35, 
              child: Container(margin: EdgeInsets.only(bottom:60),
                child: CircleAvatar(radius: 37, backgroundColor: Colors.white, 
                  child: CircleAvatar(backgroundImage: NetworkImage(bis.imageUrl), radius: 35, backgroundColor: Colors.black,)),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildConstrainedBox(context);
  }
}