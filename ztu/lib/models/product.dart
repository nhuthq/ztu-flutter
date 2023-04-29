import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final double price;
  final String imgUrl;
  final bool isPopular;
  final bool isRecommended;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imgUrl,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props =>
      [name, category, price, imgUrl, isPopular, isRecommended];

  static List<Product> products = const [
    Product(
      name: 'Cocacola Zero',
      category: 'Soft Drink',
      price: 3,
      imgUrl:
          'https://images.unsplash.com/photo-1543253687-c931c8e01820?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Cocacola Original',
      category: 'Soft Drink',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1586197362380-8e4412ebc083?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Mtn Dew',
      category: 'Soft Drink',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1585498154575-3db0fda49f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Pepsi',
      category: 'Soft Drink',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1553456558-aff63285bdd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Schweppers',
      category: 'Soft Drink',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1581006852262-e4307cf6283a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Numdet',
      category: 'Soft Drink',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1598038990523-32bcaa29f679?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Thumbus Up',
      category: 'Soft Drink',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1610873167013-2dd675d30ef4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=582&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Monster Energy',
      category: 'Soft Drink',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1622543925917-763c34d1a86e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Chupa Chups',
      category: 'Soft Drink',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1596793453564-31e6c88d67b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Heineken',
      category: 'Beer',
      price: 5.99,
      imgUrl:
          'https://images.unsplash.com/photo-1599419685838-28e405ea05b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Corona',
      category: 'Beer',
      price: 5.99,
      imgUrl:
          'https://images.unsplash.com/photo-1600213903598-25be92abde40?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Tiger',
      category: 'Beer',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1633785586918-aecf1088218d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Desparados',
      category: 'Beer',
      price: 7.99,
      imgUrl:
          'https://images.unsplash.com/photo-1581775099013-0f98f2f016c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Budweiser',
      category: 'Beer',
      price: 8.99,
      imgUrl:
          'https://images.unsplash.com/photo-1642647095389-5e62882f32b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'GINGER BEER',
      category: 'Beer',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1556030366-f4ec30b98e23?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'BOER BIER',
      category: 'Beer',
      price: 5.99,
      imgUrl:
          'https://images.unsplash.com/photo-1644472371341-6f47c441b932?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Blue Bottle Coffee - Cold Brew',
      category: 'Coffee',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1561202657-6f1fd859f713?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Nitro White Coffee',
      category: 'Coffee',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1626436273054-4aba307a6c2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Nitro Black Coffee',
      category: 'Coffee',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1626868180657-a1240e21ba35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'CALIFA - NITRO LATTE WITH OATMILK',
      category: 'Coffee',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1627261581533-f2357c73c4d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'CALIFA - COLD BREW',
      category: 'Coffee',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1532882884863-63be31e66dd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1033&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'NESCAFE - CARAMEL MACHIATO',
      category: 'Coffee',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1644418664318-40ce8982c6e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'NESCAFE - GOLD ESSPRESSO',
      category: 'Coffee',
      price: 5.99,
      imgUrl:
          'https://images.unsplash.com/photo-1553052484-d8525f4e7fb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'NESCAFE - CLASSIC',
      category: 'Coffee',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1632054010678-7f2e5a1a7355?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'STARKBUCKS - LATTE',
      category: 'Coffee',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1629749075403-19ddce2b02ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'STARKBUCKS - COLD BREW',
      category: 'Coffee',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1536638455623-a35d0fa09ab9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1716&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'STARKBUCKS - Frappuccino Mocha',
      category: 'Coffee',
      price: 4.99,
      imgUrl:
          'https://images.unsplash.com/photo-1623150146529-9aaf61d987f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'SPIKED - Coldbrew',
      category: 'Coffee',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1596050776322-dba183747b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Schweppes - PINAPPLE',
      category: 'Juice',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1662008653984-cd7731aaa438?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Chupa Chups - Orange',
      category: 'Juice',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1678771349231-b1dad94a322c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'GUAYAKÍ - Lemon',
      category: 'Juice',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1649876035306-5f0081ecd148?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'GUAYAKÍ - Lemon',
      category: 'Juice',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1649876035306-5f0081ecd148?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'SANPELLEORINO - Orange',
      category: 'Juice',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1649100769785-df2ef3392937?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'CC HYDRATE - Coconut Cucumber',
      category: 'Juice',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1612975757677-6109869f1f09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'JARRITOS - PINEAPPLE',
      category: 'Juice',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1613510493805-82582540eef6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'SAUVIGNON - BLANC',
      category: 'Wine',
      price: 79.99,
      imgUrl:
          'https://images.unsplash.com/photo-1557682204-e53b55fd750c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=974&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'JOHNNIE WALKER - Red Label',
      category: 'Wine',
      price: 129.99,
      imgUrl:
          'https://images.unsplash.com/photo-1534221905680-192a9a88ac81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'JOHNNIE WALKER - Black Label',
      category: 'Wine',
      price: 179.99,
      imgUrl:
          'https://images.unsplash.com/photo-1592620352607-53100d32f9fb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'JOHNNIE WALKER - Blue Label',
      category: 'Wine',
      price: 199.99,
      imgUrl:
          'https://images.unsplash.com/photo-1566455240374-a43b19daaae2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1016&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'GIN',
      category: 'Wine',
      price: 119.99,
      imgUrl:
          'https://images.unsplash.com/photo-1571488207231-42641b018e0c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'WOODY - GIN',
      category: 'Wine',
      price: 149.99,
      imgUrl:
          'https://images.unsplash.com/photo-1620917301907-a0cfd46ae5c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Jose Cuervo Especial - TEQUILA SILVER',
      category: 'Wine',
      price: 139.99,
      imgUrl:
          'https://images.unsplash.com/photo-1516535794938-6063878f08cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'CHIVAS REGAL - WHISKY 12',
      category: 'Wine',
      price: 249.99,
      imgUrl:
          'https://images.unsplash.com/photo-1560897120-44e1a8963856?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1007&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'JACK DANIELS - WHISKEY',
      category: 'Wine',
      price: 229.99,
      imgUrl:
          'https://images.unsplash.com/photo-1640221812839-fb1cb6af9395?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'BELVEDERE - VODKA',
      category: 'Wine',
      price: 249.99,
      imgUrl:
          'https://images.unsplash.com/photo-1645784125144-4c06a561fc58?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=981&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'CORVO - DAL 1824',
      category: 'Wine',
      price: 149.99,
      imgUrl:
          'https://images.unsplash.com/photo-1589910179170-8616d9cbcffe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'TORRIONE - PETROLO 2015',
      category: 'Wine',
      price: 139.99,
      imgUrl:
          'https://images.unsplash.com/photo-1597506597091-d88249b6a6f7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'AYMURA - PINOT NOIR',
      category: 'Wine',
      price: 169.99,
      imgUrl:
          'https://images.unsplash.com/photo-1569919659476-f0852f6834b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'COUNTRY WINE - Suave',
      category: 'Wine',
      price: 119.99,
      imgUrl:
          'https://images.unsplash.com/photo-1627260101457-21635a409ef3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'MOET & CHANDON - IMPERIAL',
      category: 'Wine',
      price: 199.99,
      imgUrl:
          'https://images.unsplash.com/photo-1627242545267-26e40aaaeb80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Perrier',
      category: 'Soda',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1551756639-30e1bcc092be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1065&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Towne Club - Lemonade',
      category: 'Soda',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1563390249708-ad8002cda6ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'UP BE AT - Protein Water',
      category: 'Soda',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1566408669374-5a6d5dca1ef5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'AQUA PANNA - TOSCANA',
      category: 'Soda',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1522643628976-0a170f6722ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'AQUA PANNA - TOSCANA',
      category: 'Soda',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1522643628976-0a170f6722ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'MINERAGUA',
      category: 'Soda',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1592243361221-93831f5a8402?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Sidra - MUNDET',
      category: 'Soda',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1591735192933-547baa8435d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Cookies & Cream',
      category: 'Milkshake',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1624781740834-fbfbf5fd221a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Cookies Chocolate',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1586917049334-0f99406d8a6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=986&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Redberry Milkshake',
      category: 'Milkshake',
      price: 2.99,
      imgUrl:
          'https://images.unsplash.com/photo-1626078436591-fd0ef36fbf46?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Coconut Milkshake',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1546470427-0d4db154ceb7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Avocado Milkshake',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1623123093799-70a72826e167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Strawberry Milkshake',
      category: 'Milkshake',
      price: 1.99,
      imgUrl:
          'https://images.unsplash.com/photo-1589734580748-6d9421464885?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=989&q=80',
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Matcha Latte',
      category: 'Milkshake',
      price: 3.99,
      imgUrl:
          'https://images.unsplash.com/photo-1604085792782-8d92f276d7d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80',
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
