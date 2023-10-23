import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/config/palette.dart';
import 'package:facebook/models/story_model.dart';
import 'package:facebook/models/user_model.dart';
import 'package:facebook/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story>? stories;

  const Stories({
    Key? key,
    required this.currentUser,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories!.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 8.0,
              ),
              child: _StoryCard(isAddStory: true, currentUser: currentUser),
            );
          }

          final Story story = stories![index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
              vertical: 8.0,
            ),
            child: _StoryCard(story: story),
          );
        },
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final User? currentUser;
  final bool isAddStory;
  final Story? story;
  final bool hasBorder;

  const _StoryCard({
    Key? key,
    this.currentUser,
    this.isAddStory = false,
    this.story,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser!.imageUrl : story!.imageUrl,
            imageBuilder: (context, imageProvider) => Container(
              height: double.infinity,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
      Container(
        height: double.infinity,
        width: 110.0,
        decoration: BoxDecoration(
          gradient: Palette.storyGradient,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      Positioned(
          top: 8.0,
          left: 8.0,
          child: isAddStory
              ? Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add),
                    iconSize: 30.0,
                    color: Palette.facebookBlue,
                    onPressed: () => print('Agregar a historia'),
                  ),
                )
              : ProfileAvatar(
                  imageUrl: story!.user.imageUrl,
                  hasBorder: !story!.isViewed,
                )),
      Positioned(
        bottom: 8.0,
        left: 8.0,
        right: 8.0,
        child: Text(
          isAddStory ? 'Crear historia' : story!.user.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      )
    ]);
  }
}
