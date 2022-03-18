class QuranDataModel {
  String? name;
  String? surah;
  String? img;

  QuranDataModel({this.name, this.surah, this.img});

  QuranDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    surah = json['Surah'];
    img = json['img'];
  }
}
