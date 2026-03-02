// ignore_for_file: public_member_api_docs, sort_constructors_first

class CoverModel {
  final String image;
  final String title;
  CoverModel({
    required this.image,
    required this.title,
  });
  
}

final List<CoverModel> covers = [
  CoverModel(image: "assets/home/hijab2.png", title: "Black collection"),
  CoverModel(image: "assets/home/hijab3.png", title: "HAE BY HAEKIM"),
  CoverModel(image: "assets/home/list_item2.png", title: "Autumn collection"),
];