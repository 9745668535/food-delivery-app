

class GetItemLiist {
  String? status;
  List<ShopDatum>? shopData;

  GetItemLiist({
    this.status,
    this.shopData,
  });

  factory GetItemLiist.fromJson(Map<String, dynamic> json) => GetItemLiist(
    status: json["Status"],
    shopData: List<ShopDatum>.from(json["shopData"].map((x) => ShopDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "shopData": List<dynamic>.from(shopData!.map((x) => x.toJson())),
  };
}

class ShopDatum {
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
  int? noOfItem = 0;

  ShopDatum({
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
    this.noOfItem
  });

  factory ShopDatum.fromJson(Map<String, dynamic> json) => ShopDatum(
    shopId: json["shop_id"],
    seqId: json["seq_id"],
    shopName: json["shop_name"],
    shopZipcode: json["shop_zipcode"],
    itemCode: json["item_code"],
    itemName: json["item_name"],
    itemDesc: json["item_desc"],
    itemCategory: json["item_category"],
    itemSubCategory: json["item_sub_category"],
    imageLoc: json["image_loc"],
    stockStatus: json["stock_status"],
    itemPrice: json["item_price"].toDouble(),
    noOfItem: json["noOfItem"].toDouble(),
  );

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
    "noOfItem": noOfItem,
  };
}
