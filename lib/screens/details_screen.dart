import 'package:coding_challenge/models/content_list_item.dart';
import 'package:coding_challenge/widgets/app_bar.dart';
import 'package:coding_challenge/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final ContentListItem item;

  const DetailsScreen({required this.item});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          key: Key('details_scroll'),
          headerSliverBuilder: (context, value) {
            return [
              CustomAppBar(
                tag: widget.item.id.toString(),
                bottomBlur: false,
                imagePath: widget.item.imagePath,
                collapsedHeight: 80.0,
                expandedHeight: size.height * 0.5,
              ),
              SliverPersistentHeader(
                delegate: CustomTabBar(
                  title: widget.item.title,
                  artist: widget.item.artist,
                  views: widget.item.views,
                  tabBar: TabBar(
                    labelColor: Colors.red,
                    unselectedLabelColor: Theme.of(context).primaryColor,
                    indicator: UnderlineTabIndicator(
                        insets: EdgeInsets.symmetric(horizontal: 45.0),
                        borderSide: BorderSide(color: Colors.red)),
                    tabs: [
                      Tab(
                          key: Key('lyrics_tab'),
                          icon: Icon(Icons.library_music_sharp),
                          text: "Lyrics"),
                      Tab(
                          key: Key('details_tab'),
                          icon: Icon(Icons.info_outline),
                          text: "Details"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              _tabBarView(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                  child: Text(
                    widget.item.lyrics,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              _tabBarView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 60.0, bottom: 20.0),
                      child: CircleAvatar(
                        maxRadius: size.width * 0.25,
                        backgroundImage: AssetImage(widget.item.artistImage),
                      ),
                    ),
                    _detailsInfo(
                        title: widget.item.artist,
                        description: 'Artist',
                        fontSize: 24.0),
                    _detailsInfo(
                        title: widget.item.album, description: 'Album'),
                    _detailsInfo(
                        title: widget.item.releaseDate,
                        description: 'Release Date'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tabBarView({Widget? child}) {
    return Center(
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowGlow();
          return true;
        },
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }

  Widget _detailsInfo(
      {String? title, required String description, double fontSize = 18.0}) {
    return Column(
      children: [
        Text(
          title ?? '--',
          style: TextStyle(fontSize: fontSize),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          description,
          style: TextStyle(fontSize: 13.0),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
