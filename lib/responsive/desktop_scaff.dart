import 'package:flutter/material.dart';
import 'package:responsive_ui_dart/constants.dart';

import '../utiles/my_box.dart';
import '../utiles/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          //for automatically  opening the drawer in desktop by default
          myDrawer,
          //rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //6 boxes on top
                AspectRatio(
                  aspectRatio: 4.0, //aspect ratio to make the box flexiable
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                //tiles below it
                Expanded(
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        }))
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [Expanded(child: Container(color: Colors.black))],
          ))
        ],
      ),
    );
  }
}
