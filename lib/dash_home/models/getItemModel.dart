class GetItems {
  int? shopId;
  int? seqId;
  String? shopName;
  String? shopZipcode;
  String? itemCode;
  String? itemName;
  String? itemDesc;
  String? itemCategory;
  String? itemSubCategory;
  String? imageLoc;
  String? stockStatus;
  double? itemPrice;

  GetItems({
    this.shopId,
    this.seqId,
    this.shopName,
    this.shopZipcode,
    this.itemCode,
    this.itemName,
    this.itemDesc,
    this.itemCategory,
    this.itemSubCategory,
    this.imageLoc,
    this.stockStatus,
    this.itemPrice,
  });

  factory GetItems.fromJson(List<dynamic> json) {
    return GetItems(
      shopId: json[0]["shop_id"],
      seqId: json[0]["seq_id"],
      shopName: json[0]["shop_name"],
      shopZipcode: json[0]["shop_zipcode"],
      itemCode: json[0]["item_code"],
      itemName: json[0]["item_name"],
      itemDesc: json[0]["item_desc"],
      itemCategory: json[0]["item_category"],
      itemSubCategory: json[0]["item_sub_category"],
      imageLoc: json[0]["image_loc"],
      stockStatus: json[0]["stock_status"],
      itemPrice: json[0]["item_price"]?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
    "shop_id": shopId,
    "seq_id": seqId,
    "shop_name": shopName,
    "shop_zipcode": shopZipcode,
    "item_code": itemCode,
    "item_name": itemName,
    "item_desc": itemDesc,
    "item_category": itemCategory,
    "item_sub_category": itemSubCategory,
    "image_loc": imageLoc,
    "stock_status": stockStatus,
    "item_price": itemPrice,
  };
}
