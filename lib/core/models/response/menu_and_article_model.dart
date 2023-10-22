import 'package:bank_mas/domain/entities/menu_and_article_entitity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'menu_and_article_model.g.dart';

@JsonSerializable()
class MenuAndArticleModel extends MenuAndArticleEntity {
  MenuAndArticleModel({
    required this.dataModel,
  }) : super(
          data: dataModel,
        );

  factory MenuAndArticleModel.fromJson(Map<String, dynamic> json) =>
      _$MenuAndArticleModelFromJson(json);

  @JsonKey(name: 'data')
  final List<DataModel>? dataModel;

  Map<String, dynamic> toJson() => _$MenuAndArticleModelToJson(this);
}

@JsonSerializable()
class DataModel extends DataEntities {
  DataModel({
    required this.itemsModel,
    required String? section,
    required String? sectionTitle,
  }) : super(
          items: itemsModel,
          section: section,
          sectionTitle: sectionTitle,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  @JsonKey(name: 'items')
  final List<ItemsModel>? itemsModel;

  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

@JsonSerializable()
class ItemsModel extends ItemsEntities {
  ItemsModel({
    required String? articleTitle,
    required String? articleImage,
    required String? link,
    required String? productName,
    required String? productImage,
  }) : super(
          articleImage: articleImage,
          articleTitle: articleTitle,
          link: link,
          productImage: productImage,
          productName: productName,
        );

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsModelToJson(this);
}
