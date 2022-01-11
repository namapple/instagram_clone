import 'package:flutter/material.dart';

class BuildSearchBar extends StatefulWidget {
  const BuildSearchBar({Key? key}) : super(key: key);

  @override
  _BuildSearchBarState createState() => _BuildSearchBarState();
}

class _BuildSearchBarState extends State<BuildSearchBar> {
  String searchString = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        onTap: () {
          showSearch<dynamic>(
            context: context,
            delegate: CustomSearch(),
          );
        },
        decoration: InputDecoration(
          hintText: 'Search here...',
          prefixIcon: Container(
            padding: const EdgeInsets.all(5),
            child: const Icon(Icons.search),
          ),
          contentPadding: const EdgeInsets.all(2),
          fillColor: Colors.grey.shade300,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate<dynamic> {
  List<String> searchTerms = [
    'Quang Hai',
    'Hong Son',
    'My Tam',
    'Dam Vinh Hung',
    'Son Tung',
    'Bamboo'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final matchQuery = <String>[];
    for (final name in searchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final result = matchQuery[index];
          return ListTile(
            leading: const Icon(Icons.history),
            title: Text(result),
            trailing: const Icon(Icons.clear),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
 final matchQuery = <String>[];
    for (final name in searchTerms) {
      if (name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(name);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          final result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
