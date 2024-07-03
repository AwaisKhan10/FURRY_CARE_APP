// ignore_for_file: deprecated_member_use

import 'package:flick_video_player/flick_video_player.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';
import 'package:video_player/video_player.dart';

class CoursesDetailViewModel extends BaseViewModel {
  late FlickManager flickManager;

  CoursesDetailViewModel() {
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      ),
    );
  }

  final List<Map<String, String>> items = [
    {
      'title': 'Introduction',
      'preview': 'Preview',
      'duration': '1:20',
    },
    // {
    //   'title': 'Planning to groom',
    //   'preview': 'Preview',
    //   'duration': '26:00',
    // },
    // {
    //   'title': 'Equipment',
    //   'preview': 'Preview',
    //   'duration': '10:00',
    // },
    // {
    //   'title': 'Health & safety',
    //   'preview': 'Preview',
    //   'duration': '15:00',
    // },
    // {
    //   'title': 'Prep for styling',
    //   'preview': 'Preview',
    //   'duration': '10:00',
    // },
  ];

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}
