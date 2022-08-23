import 'package:flutter/material.dart';
import 'package:recipe_app/recipe.dart';
import 'recipe_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipe Calculator',
        home: const MyHomePage(title: 'Recipe Calculator'),
        theme: ThemeData
            .dark() /* theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.grey, secondary: Colors.black)), */
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return RecipeDetail(recipe: Recipe.samples[index]);
                        },
                      ));
                    },
                    child: buildRecipeCard(Recipe.samples[index]));
              })),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.network(recipe.imageUrl),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              recipe.label.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
