class CategoryModel{
  String? name, txt, image;
  CategoryModel({required this.name, required this.txt, required this.image});

     CategoryModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    txt = map['txt']; // Corrected typo here
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'txt': txt,
      'image': image // Corrected key name here
    };
  }
}
