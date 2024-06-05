// ignore_for_file: depend_on_referenced_packages

import 'package:test_app/constants/app_packages.dart';
import 'package:http/http.dart' as http;

class CategoriesRepository {
  var url = AppApiLinks.categories;

  loadCategoriesFromApi() async {
    var response = await http.get(Uri.parse(url));
    var categoriesJson = json.decode(response.body);
    return categoriesJson;
  }
}
