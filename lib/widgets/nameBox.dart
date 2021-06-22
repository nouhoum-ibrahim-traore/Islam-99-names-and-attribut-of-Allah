import 'package:allah_names_app/appDatas/name.dart';
import 'package:flutter/material.dart';

class NameBox extends StatelessWidget {
  final Name item;
  NameBox({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(2),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/' + item.image,
              width: 60,
              height: 60,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.item.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.item.description),
                  Text(this.item.benefit),
                ],
              ),
            )),
            // Container(
            //   padding: EdgeInsets.all(0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       IconButton(
            //         icon: Icon(Icons.audiotrack),
            //       ),
            //       IconButton(
            //         icon: Icon(Icons.info),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
