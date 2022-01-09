import 'package:flutter/material.dart';
import 'package:instagram_login_screen/models/stories_model.dart';
import 'package:instagram_login_screen/utils/constants.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({
    Key? key,
    required this.stories,
  }) : super(key: key);

  final Stories stories;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.redAccent,
                  Colors.orangeAccent,
                ],
              ),
            ),
            child: Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(stories.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            stories.username,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: kStoryStyle,
          ),
        ],
      ),
    );
  }
}
