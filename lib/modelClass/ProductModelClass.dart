
import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  List<Datum> data;
  bool success;
  List<String> messages;

  Data({
    required this.data,
    required this.success,
    required this.messages,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    success: json["success"],
    messages: List<String>.from(json["messages"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "success": success,
    "messages": List<dynamic>.from(messages.map((x) => x)),
  };
}

class Datum {
  int id;
  dynamic code;
  String name;
  String proImage;
  int categoryId;
  int subCategoryId;
  int brandId;
  int supplierId;
  int taxId;
  int taxPercentage;
  int taxInclusive;
  int price;
  int baseUnitId;
  int baseUnitQty;
  String baseUnitDiscount;
  dynamic baseUnitBarcode;
  int baseUnitOpStock;
  String secondUnitPrice;
  int secondUnitId;
  int secondUnitQty;
  String secondUnitDiscount;
  dynamic secondUnitBarcode;
  String secondUnitOpStock;
  String thirdUnitPrice;
  int thirdUnitId;
  int thirdUnitQty;
  String thirdUnitDiscount;
  dynamic thirdUnitBarcode;
  String thirdUnitOpStock;
  String fourthUnitPrice;
  int fourthUnitId;
  int fourthUnitQty;
  String fourthUnitDiscount;
  int isMultipleUnit;
  String fourthUnitOpStock;
  dynamic description;
  int productQty;
  int storeId;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  List<ProductDetail> productDetail;

  Datum({
    required this.id,
    required this.code,
    required this.name,
    required this.proImage,
    required this.categoryId,
    required this.subCategoryId,
    required this.brandId,
    required this.supplierId,
    required this.taxId,
    required this.taxPercentage,
    required this.taxInclusive,
    required this.price,
    required this.baseUnitId,
    required this.baseUnitQty,
    required this.baseUnitDiscount,
    required this.baseUnitBarcode,
    required this.baseUnitOpStock,
    required this.secondUnitPrice,
    required this.secondUnitId,
    required this.secondUnitQty,
    required this.secondUnitDiscount,
    required this.secondUnitBarcode,
    required this.secondUnitOpStock,
    required this.thirdUnitPrice,
    required this.thirdUnitId,
    required this.thirdUnitQty,
    required this.thirdUnitDiscount,
    required this.thirdUnitBarcode,
    required this.thirdUnitOpStock,
    required this.fourthUnitPrice,
    required this.fourthUnitId,
    required this.fourthUnitQty,
    required this.fourthUnitDiscount,
    required this.isMultipleUnit,
    required this.fourthUnitOpStock,
    required this.description,
    required this.productQty,
    required this.storeId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.productDetail,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    proImage: json["pro_image"],
    categoryId: json["category_id"],
    subCategoryId: json["sub_category_id"],
    brandId: json["brand_id"],
    supplierId: json["supplier_id"],
    taxId: json["tax_id"],
    taxPercentage: json["tax_percentage"],
    taxInclusive: json["tax_inclusive"],
    price: json["price"],
    baseUnitId: json["base_unit_id"],
    baseUnitQty: json["base_unit_qty"],
    baseUnitDiscount: json["base_unit_discount"],
    baseUnitBarcode: json["base_unit_barcode"],
    baseUnitOpStock: json["base_unit_op_stock"],
    secondUnitPrice: json["second_unit_price"],
    secondUnitId: json["second_unit_id"],
    secondUnitQty: json["second_unit_qty"],
    secondUnitDiscount: json["second_unit_discount"],
    secondUnitBarcode: json["second_unit_barcode"],
    secondUnitOpStock: json["second_unit_op_stock"],
    thirdUnitPrice: json["third_unit_price"],
    thirdUnitId: json["third_unit_id"],
    thirdUnitQty: json["third_unit_qty"],
    thirdUnitDiscount: json["third_unit_discount"],
    thirdUnitBarcode: json["third_unit_barcode"],
    thirdUnitOpStock: json["third_unit_op_stock"],
    fourthUnitPrice: json["fourth_unit_price"],
    fourthUnitId: json["fourth_unit_id"],
    fourthUnitQty: json["fourth_unit_qty"],
    fourthUnitDiscount: json["fourth_unit_discount"],
    isMultipleUnit: json["is_multiple_unit"],
    fourthUnitOpStock: json["fourth_unit_op_stock"],
    description: json["description"],
    productQty: json["product_qty"],
    storeId: json["store_id"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    productDetail: List<ProductDetail>.from(json["product_detail"].map((x) => ProductDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "pro_image": proImage,
    "category_id": categoryId,
    "sub_category_id": subCategoryId,
    "brand_id": brandId,
    "supplier_id": supplierId,
    "tax_id": taxId,
    "tax_percentage": taxPercentage,
    "tax_inclusive": taxInclusive,
    "price": price,
    "base_unit_id": baseUnitId,
    "base_unit_qty": baseUnitQty,
    "base_unit_discount": baseUnitDiscount,
    "base_unit_barcode": baseUnitBarcode,
    "base_unit_op_stock": baseUnitOpStock,
    "second_unit_price": secondUnitPrice,
    "second_unit_id": secondUnitId,
    "second_unit_qty": secondUnitQty,
    "second_unit_discount": secondUnitDiscount,
    "second_unit_barcode": secondUnitBarcode,
    "second_unit_op_stock": secondUnitOpStock,
    "third_unit_price": thirdUnitPrice,
    "third_unit_id": thirdUnitId,
    "third_unit_qty": thirdUnitQty,
    "third_unit_discount": thirdUnitDiscount,
    "third_unit_barcode": thirdUnitBarcode,
    "third_unit_op_stock": thirdUnitOpStock,
    "fourth_unit_price": fourthUnitPrice,
    "fourth_unit_id": fourthUnitId,
    "fourth_unit_qty": fourthUnitQty,
    "fourth_unit_discount": fourthUnitDiscount,
    "is_multiple_unit": isMultipleUnit,
    "fourth_unit_op_stock": fourthUnitOpStock,
    "description": description,
    "product_qty": productQty,
    "store_id": storeId,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "product_detail": List<dynamic>.from(productDetail.map((x) => x.toJson())),
  };
}

class ProductDetail {
  int productId;
  int unit;
  int id;
  String name;
  String price;
  String minPrice;

  ProductDetail({
    required this.productId,
    required this.unit,
    required this.id,
    required this.name,
    required this.price,
    required this.minPrice,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
    productId: json["product_id"],
    unit: json["unit"],
    id: json["id"],
    name: json["name"],
    price: json["price"],
    minPrice: json["min_price"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "unit": unit,
    "id": id,
    "name": name,
    "price": price,
    "min_price": minPrice,
  };
}
