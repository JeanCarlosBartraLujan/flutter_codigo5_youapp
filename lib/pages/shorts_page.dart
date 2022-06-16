import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ShortPage extends StatelessWidget {
  const ShortPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Image(
        image: NetworkImage(
            "https://images.pexels.com/photos/11780519/pexels-photo-11780519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),

        //  Container(
        //   height: 800.0,
        //   width: 800.0,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(18.0),
        //     image: const DecorationImage(
        //       // image: NetworkImage("https://ih1.redbubble.net/image.622748019.0162/pp,504x498-pad,600x600,f8f8f8.u1.jpg",),
        //       image: NetworkImage(
        //         "https://images.pexels.com/photos/11780519/pexels-photo-11780519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        //       ),
        //     ),
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black.withOpacity(0.12),
        //         offset: Offset(4, 4),
        //         blurRadius: 12,
        //       ),
        //     ],
        //   ),
        // ),

        // Container(
        //   color: Colors.red,
        //   height: 800,
        //   width: 800,
        //   child: Image.network(
        //     // "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        //     "https://images.pexels.com/photos/11780519/pexels-photo-11780519.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
        //     // "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        //   ),
        // ),
      ),
    );
  }
}
