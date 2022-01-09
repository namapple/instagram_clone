import 'package:instagram_login_screen/utils/app_assets.dart';

class Stories {
  Stories({
    required this.username,
    required this.image,
  });

  final String image;
  final String username;
}

List<Stories> storyList = [
  Stories(
    username: 'trngmm',
    image: AppImg.imgInstaPerson1,
  ),
    Stories(
    username: 'ssandy.kwon',
    image: AppImg.imgInstaPerson2,
  ),
    Stories(
    username: 'sheevar',
    image: AppImg.imgInstaPerson3,
  ),
    Stories(
    username: 'thanquynh',
    image: AppImg.imgInstaPerson4,
  ),
    Stories(
    username: 'huyenthan',
    image: AppImg.imgInstaPerson5,
  ),
    Stories(
    username: 'trangpham',
    image: AppImg.imgInstaPerson6,
  ),
];
