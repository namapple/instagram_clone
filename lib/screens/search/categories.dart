import 'package:flutter/material.dart';

class Catergories extends StatefulWidget {
  const Catergories({Key? key}) : super(key: key);

  @override
  State<Catergories> createState() => _CatergoriesState();
}

class _CatergoriesState extends State<Catergories> {
  final _categoriesList = [
    'Top',
    'Account',
    'Music',
    'Tags',
    'Locations',
  ];
  int _currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // placed inside container to have secific size
      height: 35,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentSelect = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _currentSelect == index
                          ? Colors.black
                          : Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  _categoriesList[index],
                  style: TextStyle(
                      color:
                          _currentSelect == index ? Colors.black : Colors.grey,
                      fontSize: _currentSelect == index ? 15 : 14,
                      fontWeight: _currentSelect == index
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ),
            );
          },
          separatorBuilder: (_, __) => const SizedBox(width: 30),
          itemCount: _categoriesList.length),
    );
  }
}
