import 'package:flutter/material.dart';

class WeatherSearchDelegate extends SearchDelegate<String?> {
  final List<String> cities = const [
    'Cairo',
    'Gaza',
    'London',
    'Paris',
    'Dubai',
    'Istanbul',
    'Amman',
    'Riyadh',
    'Doha',
  ];
  @override
  String get searchFieldLabel => 'Search city...';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear),
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    final city = query.trim();
    if (city.isEmpty) {
      return const Center(
        child: Text('Please enter city name'),
      );
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      close(context, city);
    });
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filtercities = cities
        .where(
          (city) => city.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    final suggestions = query.isEmpty ? cities : filtercities;
    return ListView.builder(
      itemCount: suggestions.length + (query.trim().isNotEmpty ? 1 : 0),
      itemBuilder: (context, index) {
        if (query.trim().isNotEmpty && index == 0) {
          return ListTile(
            leading: const Icon(Icons.search),
            title: Text('Search for "$query"'),
            onTap: () {
              close(context, query.trim());
            },
          );
        }

        final cityIndex = query.trim().isNotEmpty ? index - 1 : index;

        if (cityIndex < 0 || cityIndex >= suggestions.length) {
          return const SizedBox.shrink();
        }

        final city = suggestions[cityIndex];

        return ListTile(
          leading: const Icon(Icons.location_city),
          title: Text(city),
          onTap: () {
            close(context, city);
          },
        );
      },
    );
  }
}
