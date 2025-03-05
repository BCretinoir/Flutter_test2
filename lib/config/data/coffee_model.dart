final List<String> coffee_type = [
  'Cappuccino',
  'Espresso',
  'Latte',
  'Mocha',
  'Macchiato',
];

class CoffeeItem{
  final String name;
  final String description;
  final double price;
  final String imagePath;

  CoffeeItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath
  });
}

final List<CoffeeItem> coffeeItemList =[
  CoffeeItem(
    name: 'Cappuccino',
    description: 'Espresso, steamed milk, and foam',
    price: 3.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Espresso',
    description: 'Strong and bold coffee',
    price: 2.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Latte',
    description: 'Espresso with steamed milk',
    price: 4.49,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Mocha',
    description: 'Espresso with chocolate and steamed milk',
    price: 4.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Macchiato',
    description: 'Espresso with a small amount of milk',
    price: 3.49,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Americano',
    description: 'Espresso with hot water',
    price: 2.49,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Flat White',
    description: 'Espresso with steamed milk and microfoam',
    price: 3.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Affogato',
    description: 'Espresso poured over ice cream',
    price: 5.49,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Irish Coffee',
    description: 'Coffee with Irish whiskey and cream',
    price: 6.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Turkish Coffee',
    description: 'Strong coffee with grounds in the cup',
    price: 3.49,
    imagePath: 'assets/images/basic/coffee.png'
  ),
  CoffeeItem(
    name: 'Vienna Coffee',
    description: 'Coffee with whipped cream',
    price: 4.99,
    imagePath: 'assets/images/basic/coffee.png'
  ),
];