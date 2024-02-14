import 'package:flutter/material.dart';
import 'package:lastmusicapp/models/playlist_provider.dart';
import 'package:lastmusicapp/pages/bnt_page.dart';
import 'package:lastmusicapp/pages/dq_page.dart';
import 'package:lastmusicapp/pages/pagepricipale.dart';
import 'package:lastmusicapp/pages/lflf_page.dart';
import 'package:lastmusicapp/pages/lnn_page.dart';
import 'package:lastmusicapp/pages/tlk_page.dart';
import 'package:lastmusicapp/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
    create: (context) => ThemeProvider()),
  ChangeNotifierProvider(
    create: (context) => PlaylistProvider()),
  ],
  child: const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
    '/lnn': (context) => LnnPage(),
    '/lflf': (context) => LflfPage(),
    '/tlk': (context) => TlkPage(),
    '/bnt': (context) => BntPage(),
    '/dq': (context) => DqPage(),
  },
      debugShowCheckedModeBanner: false,
      home: const MyWidget(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
