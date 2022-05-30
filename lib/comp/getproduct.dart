import 'dart:convert';

import 'package:bar_code/comp/model/product.dart';
import 'package:bar_code/comp/url.dart';
import 'package:flutter/cupertino.dart';
import 'package:openfoodfacts/openfoodfacts.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

/*
class GetProduct extends StatefulWidget {
  const GetProduct({Key? key}) : super(key: key);

  @override
  State<GetProduct> createState() => _GetProductState();
}

class _GetProductState extends State<GetProduct> {
  @override
  Widget build(BuildContext context) {
    Future<Product?> s = getProduct();
    return Container(
      child: Text(s.toString()),
    );
  }

  Future<Product?> getProduct() async {
    var barcode = '0048151623426';

    ProductQueryConfiguration configuration = ProductQueryConfiguration(barcode,
        language: OpenFoodFactsLanguage.FRENCH, fields: [ProductField.ALL]);
    ProductResult result = await OpenFoodAPIClient.getProduct(
      configuration,
    );

    if (result.product == 1) {
      return result.product;
    } else {
      throw Exception('product not found, please insert data for ' + barcode);
    }
  }
}
*/
/*

class getProduct {
  Client client = http.Client();

  Future<List<ProductModel>?> produit() async {
    http.Response response = await http.get(getProduit(0048151623426));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      List<ProductModel> Produit = [];
      for (var item in body) {
        Produit.add(ProductModel.fromJson(item));
      }
      return Produit;
    }
    return null;
  }
}
*/