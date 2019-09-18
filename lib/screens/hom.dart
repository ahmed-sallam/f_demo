import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'ترتيب',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        icon: Icon(
          Icons.sort,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      appBar: AppBar(
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: 'What would you like to discover?',
            hintStyle: TextStyle(
                fontFamily: 'Opensans',
                fontSize: 15.0,
                color: Colors.grey.withOpacity(0.7)),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.home),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Home"),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Icon(Icons.home),
                  SizedBox(
                    width: 8,
                  ),
                  Text("Home"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8),
        children: <Widget>[
          _cardWidget(context, 'https://picsum.photos/id/637/400/400',
              "Item Name", "Item Description", "Item Any Thing Else"),
          _cardWidget(context, 'https://picsum.photos/id/638/400/400',
              "Item Name2", "Item Description2", "Item Any Thing Else2"),
          _cardWidget(context, 'https://picsum.photos/id/639/400/400',
              "Item Name3", "Item Description3", "Item Any Thing Else3"),
          _cardWidget(context, 'https://picsum.photos/id/634/400/400',
              "Item Name4", "Item Description4", "Item Any Thing Else4"),
          _cardWidget(context, 'https://picsum.photos/id/635/400/400',
              "Item Name5", "Item Description5", "Item Any Thing Else5"),
          _cardWidget(context, 'https://picsum.photos/id/626/400/400',
              "Item Name6", "Item Description6", "Item Any Thing Else6"),
          _cardWidget(context, 'https://picsum.photos/id/623/400/400',
              "Item Name7", "Item Description7", "Item Any Thing Else7"),
          _cardWidget(context, 'https://picsum.photos/id/622/400/400',
              "Item Name8", "Item Description8", "Item Any Thing Else8"),
          _cardWidget(context, 'https://picsum.photos/id/621/400/400',
              "Item Name9", "Item Description9", "Item Any Thing Else9"),
        ],
      ),
    );
  }

  Widget _cardWidget(
    BuildContext context,
    String image,
    String name,
    String description,
    String anyElse,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(description),
        Text(anyElse),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
