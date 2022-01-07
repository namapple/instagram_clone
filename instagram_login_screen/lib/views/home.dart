import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_login_screen/models/feed.dart';
import 'package:instagram_login_screen/models/stories.dart';
import 'package:instagram_login_screen/utils/app_assets.dart';
import 'package:instagram_login_screen/widgets/feed_widget.dart';
import 'package:instagram_login_screen/widgets/stories_widget.dart';
import 'package:instagram_login_screen/widgets/user_story_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    AppImg.imgTopTitle,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(AppImg.imgPost),
                ),
                SvgPicture.asset(AppImg.imgMessage),
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  itemCount: storyList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var stories = storyList[index];
                    if (index == 0) {
                      return const UserStoriesWidget();
                    } else {
                      return StoriesWidget(stories: stories);
                    }
                  },
                ),
              ),
              ListView.builder(
                itemCount: dummyFeed.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  var feed = dummyFeed[index];
                  return FeedWidget(feed: feed);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
