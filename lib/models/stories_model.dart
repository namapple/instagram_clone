import 'package:instagram_login_screen/utils/app_assets.dart';

class Stories {
  Stories({
    required this.username,
    required this.image,
    required this.storiesImage,
  });

  final String image;
  final String username;
  final List<StoryImage> storiesImage;
}

class StoryImage {
  StoryImage({
    required this.image,
    required this.time,
  });

  final String image;
  final String time;
}

List<Stories> storyList = [
  Stories(
    username: 'trngmm',
    image: AppImg.imgInstaPerson1,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost1,
        time: '1 minute',
      ),
      StoryImage(
        image: AppImg.imgPost2,
        time: '10 minute',
      ),
    ],
  ),
  Stories(
    username: 'ssandy.kwon',
    image: AppImg.imgInstaPerson2,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost2,
        time: '1 hours',
      ),
      StoryImage(
        image: AppImg.imgPost3,
        time: '3 hours',
      ),
    ],
  ),
  Stories(
    username: 'sheevar',
    image: AppImg.imgInstaPerson3,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost3,
        time: '1 minute',
      ),
      StoryImage(
        image: AppImg.imgPost4,
        time: '10 minute',
      ),
    ],
  ),
  Stories(
    username: 'thanquynh',
    image: AppImg.imgInstaPerson4,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost4,
        time: '1 minute',
      ),
      StoryImage(
        image: AppImg.imgPost5,
        time: '10 minute',
      ),
    ],
  ),
  Stories(
    username: 'huyenthan',
    image: AppImg.imgInstaPerson5,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost5,
        time: '1 minute',
      ),
      StoryImage(
        image: AppImg.imgPost6,
        time: '10 minute',
      ),
    ],
  ),
  Stories(
    username: 'trangpham',
    image: AppImg.imgInstaPerson6,
    storiesImage: [
      StoryImage(
        image: AppImg.imgPost6,
        time: '1 minute',
      ),
      StoryImage(
        image: AppImg.imgPost1,
        time: '10 minute',
      ),
    ],
  ),
];
