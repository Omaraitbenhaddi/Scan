import 'dart:convert';

import 'package:bar_code/comp/model/Product.dart';
import 'package:bar_code/comp/url.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class GETpro extends StatefulWidget {
  @override
  State<GETpro> createState() => _GETproState();
}

class _GETproState extends State<GETpro> {
  Client client = http.Client();
  var demende;
  var code;
  var ingredient;

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  getProduct() async {
    var url = getProduit("0048151623426");
    var response = await http.get(url);
    var body = jsonDecode(response.body);
    setState(() {
      ingredient = body['product']['ingredients_hierarchy'];
      code = body['code'];
      demende = body['product']['image_ingredients_url'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMART SCAN"),
      ),
      body: Container(
          child: Column(
        children: [
          Text('le code de produit est ${code}'),
          Image.network(demende),
          Text('${ingredient}'),
        ],
      )),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
