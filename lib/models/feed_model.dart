// ignore_for_file: lines_longer_than_80_chars

import 'package:instagram_login_screen/utils/app_assets.dart';

class Feed {
  Feed({
    required this.userImage,
    required this.username,
    required this.location,
    required this.postImage,
    required this.like,
    required this.caption,
    required this.comment,
    required this.time,
  });

  final String userImage;
  final String username;
  final String location;
  final String postImage;
  final String like;
  final String caption;
  final String comment;
  final String time;
}

List<Feed> dummyFeed = [
  Feed(
    userImage: AppImg.imgInstaPerson1,
    username: 'trngmm',
    location: 'Hanoi, Vietnam',
    postImage: AppImg.imgPost1,
    like: '12',
    caption:
        'Friendship is born at that moment when one person says to another',
    comment: '5',
    time: '2',
  ),
  Feed(
    userImage: AppImg.imgInstaPerson2,
    username: 'ssandy.kwon',
    location: 'Hoabinh, Vietnam',
    postImage: AppImg.imgPost2,
    like: '84',
    caption:
        'Landscapes of Cappadocia are on of Turkey\'s most popular natural wonders',
    comment: '5',
    time: '2',
  ),
  Feed(
    userImage: AppImg.imgInstaPerson3,
    username: 'sheevar',
    location: 'Hanoi, Vietnam',
    postImage: AppImg.imgPost3,
    like: '12',
    caption: 'Organize your time: Make a timetable for yourself!',
    comment: '5',
    time: '3',
  ),
  Feed(
    userImage: AppImg.imgInstaPerson4,
    username: 'thanquynh',
    location: 'Hanoi, Vietnam',
    postImage: AppImg.imgPost4,
    like: '49',
    caption:
        'We bought our first official home! It\'s in a very calm neighborhood',
    comment: '12',
    time: '4',
  ),
  Feed(
    userImage: AppImg.imgInstaPerson5,
    username: 'huyenthan',
    location: 'Sweeden',
    postImage: AppImg.imgPost5,
    like: '58',
    caption: 'Best way to start a day: coffee + photography',
    comment: '10',
    time: '5',
  ),
  Feed(
    userImage: AppImg.imgInstaPerson6,
    username: 'trangpham',
    location: 'Lamdong, Vietnam',
    postImage: AppImg.imgPost6,
    like: '112',
    caption:
        'Huge birthday give away! \nBella is 5 today and we like to thank you for your support in the past 5 years',
    comment: '84',
    time: '6',
  ),
];
