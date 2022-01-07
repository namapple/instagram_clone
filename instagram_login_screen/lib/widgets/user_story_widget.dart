import 'package:flutter/material.dart';
import 'package:instagram_login_screen/utils/app_assets.dart';
import 'package:instagram_login_screen/utils/constants.dart';

class UserStoriesWidget extends StatelessWidget {
  const UserStoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: 86,
            margin: const EdgeInsets.only(left: 5),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppImg.imgProfilePicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Your story',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: kStoryStyle,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  )),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
