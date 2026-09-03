class ProductModel {
  final String image;
  final String brand;
  final String productName;
  final double price;
  final double oldPrice;
  final bool discount;

  ProductModel({
    required this.image,
    required this.brand,
    required this.productName,
    required this.price,
    required this.oldPrice,
    required this.discount,
  });
}

final List<ProductModel> bestSellers = [
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=600',
    brand: 'ShineStoppe',
    productName: 'Anti-Glare Sunnies',
    price: 90,
    oldPrice: 100,
    discount: true,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600',
    brand: 'Hoofin',
    productName: 'Chucklesome Shoes',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?w=600',
    brand: 'Fashion Brand',
    productName: 'Casual Outfit',
    price: 80,
    oldPrice: 100,
    discount: true,
  ),
];

final List<ProductModel> sportsProducts = [
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=600',
    brand: 'Nike',
    productName: 'Chucklesome Shoes',
    price: 90,
    oldPrice: 100,
    discount: true,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=600',
    brand: 'Vans',
    productName: 'Perfectly Wild',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1552346154-21d32810aba3?w=600',
    brand: 'Brand Name',
    productName: 'Sport Shoes',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
];

final List<ProductModel> jackets = [
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1551028719-00167b16eac5?w=600',
    brand: 'Cozy Craziness',
    productName: 'Giggle Puffer Jacket',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1516257984-b1b4d707412e?w=600',
    brand: 'Jean Genies',
    productName: 'Wacky Jean Coat',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1548883354-7622d03aca27?w=600',
    brand: 'Nutty Nougat',
    productName: 'Rustic Brown Jacket',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1544022613-e87ca75a784a?w=600',
    brand: 'Pink Palace',
    productName: 'Soft Pink Mantel',
    price: 90,
    oldPrice: 100,
    discount: true,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1490885578174-acda8905c2c6?w=600',
    brand: 'The Blue Banter Co.',
    productName: 'Quirky Jean Coat',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?w=600',
    brand: 'Nutty Nougat',
    productName: 'Espresso Jacket',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
];

final List<ProductModel> outdoorsProducts = [
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1529419412599-7bb870e11810?w=600',
    brand: 'Trailblazer',
    productName: 'Wacky Apex Jacket',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1517649763962-0c623066013b?w=600',
    brand: 'TimeTrekker',
    productName: 'Adventure Watch',
    price: 90,
    oldPrice: 100,
    discount: true,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=600',
    brand: 'Rainstorm',
    productName: 'Mountain Gear',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
];

final List<ProductModel> forYouProducts = [
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1541643600914-78b084683601?w=600',
    brand: 'Hugo Boss',
    productName: 'Fragrance',
    price: 90,
    oldPrice: 100,
    discount: true,
  ),
  ProductModel(
    image:
        'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?w=600',
    brand: 'ShadeMasters',
    productName: 'Polarized Sunglasses',
    price: 100,
    oldPrice: 100,
    discount: false,
  ),
];