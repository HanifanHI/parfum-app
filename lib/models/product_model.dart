// * CLASS MODEL
class ProductModel {
  String image;
  String title;
  String subTitle;

  ProductModel(
      {required this.image, required this.title, required this.subTitle});
}

// * MAPPING DATA
List<ProductModel> products = productData
    .map((element) => ProductModel(
        image: element['image'],
        title: element['title'],
        subTitle: element['subTitle']))
    .toList();

// * PRODUCT DATA
List<Map<String, dynamic>> productData = [
  {
    'image': 'assets/images/parfum-2.png',
    'title': 'PARFUM 2',
    'subTitle': 'Subtitle parfum 2'
  },
  {
    'image': 'assets/images/parfum-3.png',
    'title': 'PARFUM 3',
    'subTitle': 'Subtitle parfum 3'
  },
  {
    'image': 'assets/images/parfum-4.png',
    'title': 'PARFUM 4',
    'subTitle': 'Subtitle parfum 4'
  },
  {
    'image': 'assets/images/parfum-5.png',
    'title': 'PARFUM 5',
    'subTitle': 'Subtitle parfum 5'
  },
  {
    'image': 'assets/images/parfum-6.png',
    'title': 'PARFUM 6',
    'subTitle': 'Subtitle parfum 6'
  },
];
