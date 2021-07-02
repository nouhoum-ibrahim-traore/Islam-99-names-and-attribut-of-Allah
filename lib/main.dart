/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DataHandlerStateManagement/AppData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Provider.of<AppData>(context).upda();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: GestureDetector(
        child: Center(child: Image.asset("imagesAssets/blue_smile_hi.png")),
        onTap: () => {

        },
      ),
    );
  }
}
*/

// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'dart:convert';

import 'package:allah_names_app/appDatas/name.dart';
import 'package:allah_names_app/widgets/nameBox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => Name(),
    )
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final List items = Name.getNameList();

  @override
  Widget build(BuildContext context) {
    var CurrentPrjId = FutureBuilder(
      future: _loadAssetsImages(context),
      builder: (context, snapshot) {
        if (snapshot.hasData)
          return Text(snapshot.data.toString());
        else if (snapshot.hasError) return Text(snapshot.error);
        return Text("Await for data");
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('99 noms d\'Allah')),
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        child: SizedBox.expand(
          child: DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 99,
                  itemBuilder: (BuildContext context, int index) {
                    return NameBox(item: items[index]);

                    //CurrentPrjId;
                    // return ListTile(title: Text('Item $index'));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future _loadAssetsImages(BuildContext context) async {
    // >> To get paths you need these 2 lines
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    List assetsImagesNamesList = [];
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines
    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('assets/'))
        .where((String key) => key.contains('.gif'))
        .toList();
    imagePaths.forEach((v) {
      var w = "";
      for (int i = 7; i < v.length; i++) {
        w = w + v[i];
      }
      assetsImagesNamesList.add(w);
    });
    assetsImagesNamesList.sort();
    return assetsImagesNamesList;
  }
}
