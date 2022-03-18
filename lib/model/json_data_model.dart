class ZekrDataModel {
  String? count;
  String? category;
  String? description;
  String? reference;
  String? zekr;

  ZekrDataModel(
      {
    this.count,
    this.category,
    this.description,
    this.reference,
    this.zekr,
  }
  );

  ZekrDataModel.fromJson(Map<String,dynamic> json){
    count=json['count'];
    category=json['category'];
    description=json['description'];
    reference=json['reference'];
    zekr=json['zekr'];
  }
}
