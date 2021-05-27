import 'package:flutter/material.dart';

class CustomTabBar extends SliverPersistentHeaderDelegate {
  final String title;
  final String artist;
  final String views;
  final TabBar tabBar;

  CustomTabBar(
      {required this.tabBar,
      required this.title,
      required this.artist,
      required this.views});

  final height = 90.0;

  @override
  double get minExtent => tabBar.preferredSize.height + height;
  @override
  double get maxExtent => tabBar.preferredSize.height + height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  Opacity(
                    opacity: appear(shrinkOffset),
                    child: IconButton(
                        key: Key('back'),
                        iconSize: 24,
                        onPressed: () {
                          if (appear(shrinkOffset) >
                              0) // to avoid going back to the main page when no icon
                            Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 24.0),
                      ),
                      Text(
                        artist,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 7,
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Theme.of(context).primaryColor,
                        size: 20.0,
                      ),
                      Text(views)
                    ]),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
            indent: 45.0,
            endIndent: 45.0,
          ),
          Container(
            child: tabBar,
          ),
        ],
      ),
    );
  }

  double appear(double shrinkOffset) =>
      shrinkOffset / (tabBar.preferredSize.height + height);

  @override
  bool shouldRebuild(CustomTabBar oldDelegate) {
    return false;
  }
}
