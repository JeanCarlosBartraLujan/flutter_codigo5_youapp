import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/main.dart';
import 'package:flutter_codigo5_youapp/models/video_model.dart';
import 'package:flutter_codigo5_youapp/services/api_service.dart';
import 'package:flutter_codigo5_youapp/ui/general/colors.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/item_filter_widget.dart';
import 'package:flutter_codigo5_youapp/ui/widgets/item_list_video_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideoModel> videos = [];

  final APIService _apiService = APIService();
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_apiService.getVideos();
    //_apiService.getChannel("sadasdasd");
    getData();
  }

  getData() {
    _apiService.getVideos().then((value) {
      videos = value;
      isLoading = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        title: Image.asset(
          'assets/images/youtube.png',
          height: 26.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_none,
                ),
                Positioned(
                  top: -2,
                  right: -4,
                  child: Container(
                    padding: const EdgeInsets.all(2.4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: const Text(
                      "9+",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          CircleAvatar(
            radius: 14.0,
            backgroundColor: Colors.white24,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          const SizedBox(
            width: 14.0,
          ),
        ],
      ),
      backgroundColor: kBrandPrimaryColor,
      body: !isLoading
          ? SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 6.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 12.0,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.explore_outlined),
                          label: Text(
                            "Explorar",
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: kBrandSecondaryColor,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0)),
                        ),
                        const SizedBox(
                          height: 32.0,
                          child: VerticalDivider(
                            color: Colors.white24,
                            thickness: 0.9,
                          ),
                        ),
                        ItemFilterWidget(text: "Todos", isSelected: true),
                        ItemFilterWidget(text: "Mixes", isSelected: false),
                        ItemFilterWidget(text: "Música", isSelected: false),
                        ItemFilterWidget(
                            text: "Programación", isSelected: false),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: videos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ItemListVideoWidget(
                        videoModel: videos[index],
                      );
                    },
                  ),
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
//  "https://images.pexels.com/photos/774095/pexels-photo-774095.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",