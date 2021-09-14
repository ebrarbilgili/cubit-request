import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  int? id;
  List<String?>? images;
  String? title;
  String? description;
  @JsonKey(name: 'current_price')
  int? currentPrice;
  @JsonKey(name: 'previous_price')
  int? previousPrice;
  String? currency;
  @JsonKey(name: 'total_reviews')
  int? totalReviews;
  double? stars;
  String? category;
  @JsonKey(name: 'out_of_stock')
  bool? outOfStock;
  @JsonKey(name: 'sold_by')
  String? soldBy;
  @JsonKey(name: 'shipped_by')
  String? shippedBy;
  String? brand;

  HomeModel({
    this.id,
    this.images,
    this.title,
    this.description,
    this.currentPrice,
    this.previousPrice,
    this.currency,
    this.totalReviews,
    this.stars,
    this.category,
    this.outOfStock,
    this.soldBy,
    this.shippedBy,
    this.brand,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$HomeModelToJson(this);
  }
}
