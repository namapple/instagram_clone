import 'package:flutter/material.dart';
import 'package:instagram_login_screen/models/stories_model.dart';
import 'package:instagram_login_screen/utils/constants.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({
    Key? key,
    required this.stories,
  }) : super(key: key);

  final Stories stories;

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final storyController = StoryController();
  late String time;

  @override
  void initState() {
    super.initState();
    widget.stories.storiesImage.map((e) => time = e.time).toList();
  }

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            onStoryShow: (s) {
              // ignore: avoid_print
              print('Showing a story');
            },
            onComplete: () {
              Navigator.pop(context);
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            storyItems: widget.stories.storiesImage
                .map(
                  (e) => StoryItem.pageProviderImage(
                    AssetImage(e.image),
                    imageFit: BoxFit.contain,
                    duration: const Duration(seconds: 3),
                  ),
                )
                .toList(),
            controller: storyController,
          ),
          Positioned(
            top: 84,
            left: 12,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(widget.stories.image),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.stories.username,
                  style: kTitleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '$time ago',
                  style: kTitleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
