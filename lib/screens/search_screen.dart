import 'package:flutter/material.dart';
import 'package:instagram_login_screen/models/search_model.dart';
import 'package:instagram_login_screen/screens/search/categories.dart';
import 'package:instagram_login_screen/screens/search/search_bar.dart';
class Browse extends StatelessWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BuildSearchBar(),
              const SizedBox(height: 10),
              const Catergories(),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: searchList
                    .map((e) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(e.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
