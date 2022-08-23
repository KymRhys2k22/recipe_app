import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      //2
      body: SafeArea(
          //3
          child: Column(
        children: <Widget>[
          //4
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: NetworkImage(widget.recipe.imageUrl)),
          ),
          //5
          const SizedBox(
            height: 4,
          ),
          //6
          Text(
            widget.recipe.label.toUpperCase(),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          //7
          Expanded(
              child: ListView.builder(
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, index) {
                    final ingredient = widget.recipe.ingredients[index];
                    //9
                    //TODO: Add ingredient.quiatity
                    return Text(
                        textAlign: TextAlign.center,
                        '${ingredient.quantity}   ${ingredient.measure}   ${ingredient.name.toUpperCase()}');
                  })),

          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.servings} servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.red,
          )
        ],
      )),
    );
  }
}
