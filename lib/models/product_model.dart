import 'dart:convert';
import 'package:awalmula/models/customAttribute_model.dart';
import 'package:awalmula/models/mediaGallery_model.dart';

import 'extension_model.dart';

class ProductModel {
  int id;
  String sku;
  String name;
  int attribute_set_id;
  int price;
  int status;
  int visibility;
  String type_id;
  bool weight;
  ExtensionModel extensionModel;
  MediaGallery mediaGalleryModel;
  CustomAttribute customAttributeModel;

  ProductModel(
      {required this.id,
      required this.sku,
      required this.name,
      required this.attribute_set_id,
      required this.price,
      required this.status,
      required this.visibility,
      required this.type_id,
      required this.weight,
      required this.extensionModel,
      required this.mediaGalleryModel,
      required this.customAttributeModel});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      sku: json["sku"],
      name: json["name"],
      attribute_set_id: json["attribute_set_id"],
      price: json["price"],
      status: json["status"],
      visibility: json["visibility"],
      type_id: json["type_id"],
      weight: json["weight"],
      extensionModel: json["extension_attributes"],
      mediaGalleryModel: json["media_gallery_entries"],
      customAttributeModel: json["custom_attributes"],
    );
  }

  List<ProductModel> productFromJson(String jsonData) {
    final data = json.decode(jsonData);
    return List<ProductModel>.from(
        data.map((item) => ProductModel.fromJson(item)));
  }
}
