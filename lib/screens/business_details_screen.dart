import 'package:Appo/widgets/section_button.dart';
import 'package:flutter/material.dart';
import '../models/Business.dart';

class BusinessDetailsScreen extends StatefulWidget {

  final Business business;
  static const routeName = 'business-details';
  static const sectionsNames = const ['ביקורות', 'מיקום', 'לוח זמנים' ];
  List<SectionButton> sectionButtonsList;

  BusinessDetailsScreen(this.business);

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {

  void initState()
  {
    super.initState();
    buildSectionButtons();
  }

  void sectionButtonPreesed(int index)
  {
    setState(() 
    {
      for(int i=0; i< widget.sectionButtonsList.length; i++) //set all buttons to unPressed color
      {
        widget.sectionButtonsList[i].state.IsPressed = false;
      }
      widget.sectionButtonsList[index].state.IsPressed = true; //set the pressed button to pressed color
    });
  }

  List<Widget> buildSectionButtons()
  {
    widget.sectionButtonsList = [];
    for(int i=0; i<3; i++)
    {
      widget.sectionButtonsList.add(
        SectionButton(
          key: UniqueKey(), 
          title: BusinessDetailsScreen.sectionsNames[i], 
          onPressed: ()=> sectionButtonPreesed(i),
        ),
      );
    }
    return widget.sectionButtonsList;
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff8160c7)),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.white,
          child: CustomPaint(
           painter: CurvePainter(),
            child: Column(
              children: [

                SizedBox(
                  height: size.height*0.25,
                ),

                //image
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: CircleAvatar(
                    radius: size.width*0.09,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: size.width*0.08, 
                      backgroundImage: NetworkImage(widget.business.imageUrl),
                      )
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                //business name
                Text("${widget.business.name}", style: 
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 1.15),
                ),

                SizedBox(height: 5,),

                Text("${widget.business.Type}", style: TextStyle(color: Colors.grey.shade400),
                ),

                SizedBox(
                  height: 3,
                ),
                Text(
                  "${widget.business.address}, ${widget.business.city}",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                ElevatedButton(
                  clipBehavior: Clip.antiAlias,
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xff8160c7)),
                    
                  child: const Text('קבע תור'),
                  onPressed: () {},
                ),

                SizedBox(
                  height: 20,
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: widget.sectionButtonsList),

                Divider(height: 5, )

              ],
          ),
      ),
      
    )));
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.shader = LinearGradient(
            colors: [Color(0xff8160c7), Color(0xff8f77dc), Color(0xff8f67bc)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)
        .createShader(
      Rect.fromLTRB(
        size.width * 0.15,
        size.height * 0.15,
        size.width,
        size.height * 0.1,
      ),
    );
    var path = Path();
    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width * 0.48, size.height * 0.38, size.width, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.38, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}