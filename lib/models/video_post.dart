import 'package:facebook/models/user_model.dart';
import 'package:video_player/video_player.dart';

class Post {
  final User user;
  final String caption;
  final String timeAgo;
  final VideoPlayerController
      videoPlayerController; // Cambiar videoUrl por videoPlayerController
  final int likes;
  final int comments;
  final int shares;

  const Post({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.videoPlayerController, // Cambiar videoUrl por videoPlayerController
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
