import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_login_screen/models/feed_model.dart';
import 'package:instagram_login_screen/utils/app_assets.dart';
import 'package:instagram_login_screen/utils/constants.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
    Key? key,
    required this.feed,
  }) : super(key: key);

  final Feed feed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black12,
                  backgroundImage: AssetImage(feed.userImage),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      feed.username,
                      style: kTitleStyle,
                    ),
                    Text(
                      feed.location,
                      style: kSubtitleStyle.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Image.asset(feed.postImage, fit: BoxFit.fill),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    SvgPicture.asset(
                      AppImg.imgHeart,
                      width: 27,
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset(
                      AppImg.imgComment,
                      width: 27,
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset(
                      AppImg.imgMessage,
                      width: 27,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  AppImg.imgSave,
                  width: 27,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              '${feed.like} likes',
              style: kTitleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '${feed.username} ',
                    style: kTitleStyle,
                  ),
                  TextSpan(
                    text: feed.caption,
                    style: kSubtitleStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 5),
            child: Text(
              'View all ${feed.comment} comments',
              style: kSubtitleStyle.copyWith(
                color: Colors.black38,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, bottom: 5),
                child: Row(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(AppImg.imgProfilePicture),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Add a comment...',
                        style: kSubtitleStyle.copyWith(
                          color: Colors.black38,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Text(
                      '😊',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Text(
                      '😂',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(Icons.add_circle_outline, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 12, bottom: 5),
            child: Text(
              '${feed.time} hours ago',
              style: kTimeStyle,
            ),
          ),
        ],
      ),
    );
  }
}
