import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Salad',
      'ingredients': 'Lettuce, Tomato, Cucumber',
      'instructions': 'Chop vegetables, mix in a bowl, and serve.'
    },
    {
      'title': 'PB&J Sandwich',
      'ingredients': 'Peanut Butter, Jelly, Bread',
      'instructions': 'Spread peanut butter and jelly between two pieces of bread and serve.'
    },
    {
      'title': 'Chocolate Cake',
      'ingredients': 'Flour, Cocoa, Sugar, Eggs',
      'instructions': 'Mix ingredients, bake at 350°F for 30 minutes.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe App')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}