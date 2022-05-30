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

  @override
  void initState() {
    getProduct();
    super.initState();
  }

  getProduct() async {
    var url = Uri.parse(
        "https://world.openfoodfacts.org/api/v0/product/0048151623426.json");
    var response = await http.get(url);
    var body = jsonDecode(response.body);
    setState(() {
      demende = body['code'];
    });
    print(body['code']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SMART SCAN"),
      ),
      body: Container(
        child: Text("${demende}"),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
