
class ProductsModel {
  final String name;
  final String image;
  final double price;
  final String description;
  ProductsModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });
}

final List<ProductsModel> products = [
  ProductsModel(
    name: 'Black Dress',
    image: 'assets/home/dress.png',
    price: 49.99,
    description:
        'An elegant black dress with a timeless design, ideal for both casual outings and formal occasions.',
  ),
  ProductsModel(
    name: 'Diamond Ring',
    image: 'assets/home/playlet1.png',
    price: 59.99,
    description:
        'Classic diamond ring crafted from premium materials, offering a comfortable fit and modern style.',
  ),
  ProductsModel(
    name: 'Bracelet',
    image: 'assets/home/playlet2.png',
    price: 89.99,
    description:
        'Minimalist bracelet designed for comfort and versatility, perfect for daily wear.',
  ),
  ProductsModel(
    name: 'Silver Ring',
    image: 'assets/home/ring.png',
    price: 89.99,
    description:
        'A delicate silver ring that adds a touch of elegance and sophistication to any outfit.',
  ),
  ProductsModel(
    name: 'Diamond Rings Set',
    image: 'assets/home/rings.png',
    price: 89.99,
    description:
        'A stunning set of diamond rings that sparkle beautifully, ideal for special occasions or as a gift.',
  ),
  ProductsModel(
    name: 'Leather Shoes',
    image: 'assets/home/shoe.png',
    price: 89.99,
    description:
        'Premium leather shoes offering durability and classic style, perfect for both work and events.',
  ),
];
