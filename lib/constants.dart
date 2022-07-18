import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];
var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  backgroundColor: Colors.white,
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.heart_broken, size: 40)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('D A S H B O A R D'),
    ),
    ListTile(
      leading: Icon(Icons.coffee),
      title: Text('C O F F E E'),
    ),
    ListTile(
      leading: Icon(Icons.code_outlined),
      title: Text('C O D I N G'),
    ),
    ListTile(leading: Icon(Icons.music_note_rounded), title: Text('M U S I C')),
    ListTile(
      leading: Icon(Icons.smoking_rooms),
      title: Text('C I G R A T E'),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('L O G O U T'),
    ),
  ]),
);
