import 'package:json_annotation/json_annotation.dart';

class MenuAndArticleEntity {
  MenuAndArticleEntity({
    this.data,
  });

  // @JsonKey(ignore: true)
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<DataEntities>? data;
}

class DataEntities {
  DataEntities({
    this.items,
    this.section,
    this.sectionTitle,
  });

  // @JsonKey(ignore: true)
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<ItemsEntities>? items;

  String? section;
  String? sectionTitle;
}

class ItemsEntities {
  ItemsEntities({
    this.articleTitle,
    this.articleImage,
    this.link,
    this.productName,
    this.productImage,
  });

  String? articleImage;
  String? articleTitle;
  String? link;
  String? productImage;
  String? productName;
}
