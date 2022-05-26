Uri getProduit(int id) {
  return Uri.parse('https://world.openfoodfacts.org/api/v0/product/$id.json');
}
