class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);
  static List<Recipe> samples = [
    Recipe(
        'Adobo',
        'https://www.pinoyrecipe.net/wp-content/uploads/2012/05/pork-adobo-recipe.jpg',
        5, [
      Ingredient(1, 'kilo', 'Pork belly liempo'),
      Ingredient(2, 'tbsp', 'garlic minced or crushed'),
      Ingredient(5, 'pieces', 'pieces dried bay leaves'),
      Ingredient(4, 'tbsp', 'vinegar'),
      Ingredient(1, 'cup', 'soy sauce'),
      Ingredient(1, 'tbsp', 'whole pepper corn'),
      Ingredient(1, 'cup', 'water'),
      Ingredient(.0, '', 'salt to taste')
    ]),
    Recipe(
        'Lumpiang Shanghai',
        'https://www.pinoyrecipe.net/wp-content/uploads/2021/01/Magical-Lumpiang-Shanghai-Recipe-360x361.jpg',
        3, [
      Ingredient(500, 'grams', 'Ground Pork'),
      Ingredient(250, 'grams', 'Ground Beef'),
      Ingredient(1, 'sachet', 'MAGGI® Magic Sarap®'),
      Ingredient(3, 'tbps', 'MAGGI® Oyster Sauce'),
      Ingredient(.500, 'tbsp', 'ground black pepper'),
      Ingredient(1, 'medium', 'Onion minced'),
      Ingredient(3, 'cloves', 'Garlic minced'),
      Ingredient(.125, 'cup', 'green onion'),
      Ingredient(1, 'cup', 'Carrot grated'),
      Ingredient(1, 'pc', 'Egg'),
    ]),
    Recipe(
        'Pork Bistek Recipe',
        'https://www.pinoyrecipe.net/wp-content/uploads/2015/06/Pork-Bistek-Recipe-360x361.jpg',
        6, [
      Ingredient(750, 'grams', 'Pork loin tapa sliced'),
      Ingredient(.5, 'cup', 'soy sauce'),
      Ingredient(1, 'tbsp', 'Worcestershire sauce optional'),
      Ingredient(1.5, 'cups', 'water'),
      Ingredient(.5, 'large', 'white onion peeled and sliced crosswise'),
      Ingredient(.5, 'large', 'white onion sliced into rings for garnish'),
      Ingredient(10, 'small', 'sized calamansi sliced and juiced'),
      Ingredient(1, 'small', 'sized bell pepper for garnish'),
      Ingredient(4, 'cloves', 'garlic crushed'),
      Ingredient(3, 'tbsp', 'cooking oil'),
      Ingredient(0, 'Salt and pepper to taste', ''),
    ]),
    Recipe(
        'Igado Recipe',
        'https://www.pinoyrecipe.net/wp-content/uploads/2014/09/Igado-Recipe-320x321.jpg',
        2, [
      Ingredient(500, 'grams', 'pork tenderloin cut into strips'),
      Ingredient(500, 'grams', 'Pork liver cut into strips'),
      Ingredient(1, 'cups', 'green peas'),
      Ingredient(1, 'medium-sized', 'carrot cut into strips'),
      Ingredient(5, 'pcs', 'garlic cloves minced'),
      Ingredient(1, 'medium-sized', 'onion diced'),
      Ingredient(1, 'large', 'red bell pepper cut into strips'),
      Ingredient(5, 'pcs', 'dried bay leaves'),
      Ingredient(7, 'tbsp', 'soy sauce'),
      Ingredient(.5, 'cup', 'vinegar'),
      Ingredient(1, 'cup', 'water'),
      Ingredient(1, 'tbsp', 'cooking oil'),
      Ingredient(0, 'Salt and pepper to taste', ''),
    ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
