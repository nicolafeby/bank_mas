// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_and_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuAndArticleModel _$MenuAndArticleModelFromJson(Map<String, dynamic> json) =>
    MenuAndArticleModel(
      dataModel: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
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
      sectionTitle: json['sectionTitle'] as String?,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'section': instance.section,
      'sectionTitle': instance.sectionTitle,
      'items': instance.itemsModel,
    };

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) => ItemsModel(
      articleTitle: json['articleTitle'] as String?,
      articleImage: json['articleImage'] as String?,
      link: json['link'] as String?,
      productName: json['productName'] as String?,
      productImage: json['productImage'] as String?,
    );

Map<String, dynamic> _$ItemsModelToJson(ItemsModel instance) =>
    <String, dynamic>{
      'articleTitle': instance.articleTitle,
      'articleImage': instance.articleImage,
      'link': instance.link,
      'productName': instance.productName,
      'productImage': instance.productImage,
    };
