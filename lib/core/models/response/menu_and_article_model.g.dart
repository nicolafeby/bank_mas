// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_and_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuAndArticleModel _$MenuAndArticleModelFromJson(Map<String, dynamic> json) =>
    MenuAndArticleModel(
      dataModel: (json['data'] as List<dynamic>?)
          ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuAndArticleModelToJson(
        MenuAndArticleModel instance) =>
    <String, dynamic>{
      'data': instance.dataModel,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      itemsModel: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      section: json['section'] as String?,
      sectionTitle: json['section_title'] as String?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'section': instance.section,
      'section_title': instance.sectionTitle,
      'items': instance.itemsModel,
    };

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) => ItemsModel(
      articleTitle: json['article_title'] as String?,
      articleImage: json['article_image'] as String?,
      link: json['link'] as String?,
      productName: json['product_name'] as String?,
      productImage: json['product_image'] as String?,
    );

Map<String, dynamic> _$ItemsModelToJson(ItemsModel instance) =>
    <String, dynamic>{
      'article_image': instance.articleImage,
      'article_title': instance.articleTitle,
      'link': instance.link,
      'product_image': instance.productImage,
      'product_name': instance.productName,
    };
