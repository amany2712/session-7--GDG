import 'package:session7_gdg/app_images.dart';

class Coversmodel {
  final String image;
  final String name;
  Coversmodel({
    required this.image,
    required this.name
  });

}
List<Coversmodel> covers = [
    Coversmodel(image: Assets.imagesListItem1, name: "Black collection"),
    Coversmodel(image: Assets.imagesListItem2, name: "HAE BY HAEKIM"),
    Coversmodel(image: Assets.imagesListItem3, name: "Autumn collection"),
    


  ];