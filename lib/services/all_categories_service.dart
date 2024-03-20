import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogries() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
