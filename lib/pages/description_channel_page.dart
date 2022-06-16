import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/general_widgets.dart';

class DescriptionChannelPage extends StatelessWidget {
  const DescriptionChannelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: Text("FlutterStudio"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cast),
          ),
          const SizedBox(
            width: 8.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Descripción",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            space10(),
            Text(
              "FlutterStudio by Indian Innovation. FlutterStudio is a official channelFlutterStudio by Indian Innovation. FlutterStudio is a official channel FlutterStudio by Indian Innovation. FlutterStudio is a official channel ",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
