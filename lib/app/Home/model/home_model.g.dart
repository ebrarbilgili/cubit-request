// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      id: json['id'] as int?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      currentPrice: json['current_price'] as int?,
      previousPrice: json['previous_price'] as int?,
      currency: json['currency'] as String?,
      totalReviews: json['total_reviews'] as int?,
      stars: (json['stars'] as num?)?.toDouble(),
      category: json['category'] as String?,
      outOfStock: json['out_of_stock'] as bool?,
      soldBy: json['sold_by'] as String?,
      shippedBy: json['shipped_by'] as String?,
      brand: json['brand'] as String?,
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'description': instance.description,
      'current_price': instance.currentPrice,
      'previous_price': instance.previousPrice,
      'currency': instance.currency,
      'total_reviews': instance.totalReviews,
      'stars': instance.stars,
      'category': instance.category,
      'out_of_stock': instance.outOfStock,
      'sold_by': instance.soldBy,
      'shipped_by': instance.shippedBy,
      'brand': instance.brand,
    };
