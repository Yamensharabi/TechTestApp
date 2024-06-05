import 'package:test_app/model/product_model.dart';

class CategoryModel {
  final int id;
  final String name;
  final List<ProductModel> products;

  CategoryModel({
    required this.id,
    required this.name,
    required this.products,
  });
}
