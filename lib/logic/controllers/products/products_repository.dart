// ignore_for_file: depend_on_referenced_packages

import 'package:http/http.dart' as http;
import 'package:test_app/constants/app_packages.dart';

class ProductsRepository {
  var url = AppApiLinks.products;

  loadProductsFromApi(String categoryName) async {
    var response = await http.get(Uri.parse(url + categoryName));
    return json.decode(response.body);
  }
}
