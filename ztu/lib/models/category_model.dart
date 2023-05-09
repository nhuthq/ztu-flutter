import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String imgUrl;

  const Category({
    required this.id,
    required this.name,
    required this.imgUrl,
  });

  @override
  List<Object?> get props => [id, name, imgUrl];

  static List<Category> categories = const [
    Category(
      id: '1',
      name: 'Soft Drink',
      imgUrl:
          'https://images.unsplash.com/photo-1606168094336-48f205276929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    ),
    Category(
      id: '2',
      name: 'Soda',
      imgUrl:
          'https://images.unsplash.com/photo-1567671899076-51a64ddb7c5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1024&q=80',
    ),
    Category(
      id: '3',
      name: 'Juice',
      imgUrl:
          'https://images.unsplash.com/photo-1613478223719-2ab802602423?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    ),
    Category(
      id: '4',
      name: 'Milkshake',
      imgUrl:
          'https://images.unsplash.com/photo-1543573852-1a71a6ce19bc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    ),
    Category(
      id: '5',
      name: 'Coffee',
      imgUrl:
          'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
    ),
    Category(
      id: '6',
      name: 'Beer',
      imgUrl:
          'https://images.unsplash.com/photo-1608270586620-248524c67de9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    ),
    Category(
      id: '7',
      name: 'Wine',
      imgUrl:
          'https://images.unsplash.com/photo-1542849187-5ec6ea5e6a27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1167&q=80',
    ),
  ];
}
