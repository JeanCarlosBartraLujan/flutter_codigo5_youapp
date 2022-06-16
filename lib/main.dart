import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/pages/inicio_page.dart';
import 'package:flutter_codigo5_youapp/pages/init_page.dart';
import 'package:flutter_codigo5_youapp/pages/video_detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Example",
      home: InitPage(),
    );
  }
}
