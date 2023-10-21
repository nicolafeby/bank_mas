import 'package:json_annotation/json_annotation.dart';

class MenuAndArticleEntity {
  @JsonKey(ignore: true)
  DataEntities? data;

  MenuAndArticleEntity({
    this.data,
  });
}

class DataEntities {
  @JsonKey(ignore: true)
  List<ItemsEntities>? items;
  String? section;
  String? sectionTitle;

  DataEntities({
    this.items,
    this.section,
    this.sectionTitle,
  });
}

class ItemsEntities {
  String? articleTitle;
  String? articleImage;
  String? link;
  String? productName;
  String? productImage;

  ItemsEntities({
    this.articleTitle,
    this.articleImage,
    this.link,
    this.productName,
    this.productImage,
  });
}
