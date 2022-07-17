import 'package:flutter/material.dart'; 

class SearchBar extends StatelessWidget {
  final Function iconClickedFunc;

  SearchBar(this.iconClickedFunc);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Row(
        children: <Widget>[
          //search icon
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(38.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(0, 2),
                    blurRadius: 8.0),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(32.0),
                ),
                onTap: 
                  //FocusScope.of(context).requestFocus(FocusNode());
                  iconClickedFunc,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search,
                      size: 15,
                      color: Theme.of(context).canvasColor),
                ),
              ),
            ),
          ),
          //search bar
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(38.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 8.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4),
                  child: TextField(textDirection: TextDirection.rtl,
                    onChanged: (String txt) {},
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.right,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "...חפש בית עסק",
                      
                    ),
                  ),
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}