import 'package:coding_challenge/cubits/lyrics/lyrics_cubit.dart';
import 'package:coding_challenge/models/content_header.dart';
import 'package:coding_challenge/models/content_list.dart';
import 'package:coding_challenge/models/content_list_item.dart';
import 'package:coding_challenge/screens/theme_screen.dart';
import 'package:coding_challenge/utils/animation/custom_page_transition_animation.dart';
import 'package:coding_challenge/widgets/app_bar.dart';
import 'package:coding_challenge/widgets/text_button.dart';
import 'package:drag_and_drop_lists/drag_and_drop_list.dart';
import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late ContentHeader content;
  late List<DragAndDropList> _lists;

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: BlocBuilder<LyricsCubit, LyricsState>(
        builder: (context, state) {
          switch (state.status) {
            case LyricsStatus.initial:
              return ThemeScreen(initialize: true);
            case LyricsStatus.failure:
              return Center(
                child: Text('Something went wrong!'),
              );
            case LyricsStatus.success:
              final featured = state.lyrics!.featured;
              content = state.lyrics!;
              _lists = content.data!.map(_buildList).toList();
              return Stack(
                children: [
                  RefreshIndicator(
                    onRefresh: _refreshList,
                    child: CustomScrollView(
                      key: Key('main_scroll'),
                      controller: _scrollController,
                      slivers: [
                        _appBar(context, size, featured!),
                        _list(),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    right: 25.0,
                    child: FloatingActionButton(
                      key: Key('select_theme'),
                      onPressed: () async {
                        await Navigator.of(context)
                            .push(CustomPageRoute(ThemeScreen()));
                      },
                      child: Icon(
                        Icons.settings_brightness_rounded,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              );
            default:
              return Center(
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }

  Future<void> _refreshList() async {
    await context.read<LyricsCubit>().getLyrics();
  }

  Widget _appBar(BuildContext context, Size size, ContentListItem featured) {
    return CustomAppBar(
      tag: featured.id.toString(),
      collapsedHeight: 160.0,
      expandedHeight: size.height * 0.65,
      imagePath: featured.imagePath,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      featured.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      featured.artist,
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '#1 Trending Lyrics',
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                  width: 54.0,
                  child: CustomTextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                  item: featured,
                                )),
                      );
                    },
                    child: Text(
                      'Read',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _list() {
    return SliverPadding(
      padding: EdgeInsets.only(top: 40),
      sliver: DragAndDropLists(
        children: _lists,
        itemDivider: Divider(
          thickness: 1.0,
          height: 1.0,
          endIndent: 15.0,
          indent: 15.0,
        ),
        onItemReorder: _onItemReorder,
        onListReorder: _onListReorder,
        sliverList: true,
        scrollController: _scrollController,
        listDragOnLongPress: false,
        itemDragOnLongPress: false,
      ),
    );
  }

  DragAndDropList _buildList(ContentList list) => DragAndDropList(
        header: Container(
          padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
          child: Text(
            list.header,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              color: Colors.red,
            ),
          ),
        ),
        children: list.items
            .map(
              (item) => DragAndDropItem(
                child: ListTile(
                  key: Key('item_${item.id}_tile'),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                              item: item,
                            )),
                  ),
                  leading: Hero(
                    tag: '${item.id}',
                    child: Image.asset(
                      item.imagePath,
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    item.title,
                  ),
                  subtitle: Text(item.artist),
                  trailing: Wrap(
                      alignment: WrapAlignment.spaceAround,
                      spacing: 7,
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 20.0,
                        ),
                        Text(item.views)
                      ]),
                ),
              ),
            )
            .toList(),
      );

  _onItemReorder(
      int oldItemIndex, int oldListIndex, int newItemIndex, int newListIndex) {
    _onStateReorder(
        oldIndex: oldItemIndex,
        newIndex: newItemIndex,
        list: content.data![oldListIndex].items,
        secondList: content.data![newListIndex].items,
        update: true);
    setState(() {
      _onStateReorder(
          oldIndex: oldItemIndex,
          newIndex: newItemIndex,
          list: _lists[oldListIndex].children,
          secondList: _lists[newListIndex].children);
    });
  }

  _onListReorder(int oldListIndex, int newListIndex) {
    _onStateReorder(
        oldIndex: oldListIndex,
        newIndex: newListIndex,
        list: content.data,
        update: true);
    setState(() {
      _onStateReorder(
          oldIndex: oldListIndex, newIndex: newListIndex, list: _lists);
    });
  }

  _onStateReorder(
      {required int oldIndex,
      required int newIndex,
      required dynamic list,
      dynamic secondList,
      bool update = false}) {
    final movedList = list.removeAt(oldIndex);
    secondList != null
        ? secondList.insert(newIndex, movedList)
        : list.insert(newIndex, movedList);

    // update the list on rebuilt
    if (update) {
      context.read<LyricsCubit>().dragAndDropUpdate(content, DateTime.now());
    }
  }
}
