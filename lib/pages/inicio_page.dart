import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/constants.dart';
import 'package:flutter_codigo5_youapp/pages/description_channel_page.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/general_widgets.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          Image.network(
            "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            width: double.infinity,
            height: height * 0.2,
            fit: BoxFit.cover,
          ),
          space10(),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            ),
          ),
          space10(),
          Text(
            "FlutterStudio",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          space10(),
          Text(
            "SUSCRIBIRSE ",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 13.0,
            ),
          ),
          space10(),
          Text(
            "20,1 M de suscriptores · 250 vídeos",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionChannelPage(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Row(children: [
                Expanded(
                  child: Text(
                    "FlutterStudio by Indian Innovation. FlutterStudio is a official channelFlutterStudio by Indian Innovation. FlutterStudio is a official channel FlutterStudio by Indian Innovation. FlutterStudio is a official channel ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.white,
                ),
                // IconButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => DescriptionChannelPage(),
                //       ),
                //     );
                //   },
                //   icon: Icon(
                //     Icons.navigate_next_outlined,
                //     color: Colors.white54,
                //   ),
                // ),
                space10(),





                
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
