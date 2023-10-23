import 'package:facebook/config/palette.dart';
import 'package:facebook/data/data.dart';
import 'package:facebook/models/post_model.dart';
import 'package:facebook/widgets/circle_button.dart';
import 'package:facebook/widgets/post_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MomentsMovie extends StatelessWidget {
  const MomentsMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Color para la barra de notificaciones
      ),
    );

    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              backgroundColor: Colors.white,
              title: const Text(
                'Videos',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              centerTitle: false,
              floating: true,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              actions: [
                Row(
                  children: [
                    CircleButton(
                      icon: Icons.person,
                      iconSize: 30.0,
                      onPressed: () => print('Object 1'),
                    ),
                    CircleButton(
                      icon: Icons.search,
                      iconSize: 30.0,
                      onPressed: () => print('Object 2'),
                    ),
                  ],
                ),
              ],
            ),
            SliverPersistentHeader(
              pinned: false,
              delegate: _SliverAppBarDelegate(
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.symmetric(vertical: 6),
                  labelPadding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Color.fromARGB(117, 210, 228, 243),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30),
                      right: Radius.circular(30),
                    ),
                  ),
                  tabs: [
                    Tab(
                      text: 'Para ti',
                    ),
                    Tab(
                      text: 'En vivo',
                    ),
                    Tab(
                      text: 'Videojuegos',
                    ),
                    Tab(
                      text: 'Reels',
                    ),
                    Tab(
                      text: 'Seguidos',
                    ),
                  ],
                  labelColor: Palette.facebookBlue,
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              // Contenido de la pestaña 1
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
              ),
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
              ),
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
              ),
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
              ),
              ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final Post post = posts[index];
                  return PostContainer(post: post);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return _tabBar;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
