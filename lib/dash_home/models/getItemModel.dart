class ShopItem {
  final int shopId;
  final int seqId;
  final String shopName;
  final String shopZipcode;
  final String itemCode;
  final String itemName;
  final String itemDesc;
  final String itemCategory;
  final String itemSubCategory;
  final String imageLoc;
  final String stockStatus;
  final int stock;
  final double itemPrice;

  ShopItem({
    required this.shopId,
    required this.seqId,
    required this.shopName,
    required this.shopZipcode,
    required this.itemCode,
    required this.itemName,
    required this.itemDesc,
    required this.itemCategory,
    required this.itemSubCategory,
    required this.imageLoc,
    required this.stockStatus,
    required this.stock,
    required this.itemPrice,
  });

  factory ShopItem.fromJson(Map<String, dynamic> json) {
    return ShopItem(
      shopId: json['shop_id'],
      seqId: json['seq_id'],
      shopName: json['shop_name'],
      shopZipcode: json['shop_zipcode'],
      itemCode: json['item_code'],
      itemName: json['item_name'],
      itemDesc: json['item_desc'],
      itemCategory: json['item_category'],
      itemSubCategory: json['item_sub_category'],
      imageLoc: json['image_loc'],
      stockStatus: json['stock_status'],
      stock: json['stock'],
      itemPrice: json['item_price'].toDouble(),
    );
  }
}

class ShopItemList {
  final List<ShopItem> items;

  ShopItemList({required this.items});

  factory ShopItemList.fromJson(List<dynamic> json) {
    List<ShopItem> items = json.map((item) => ShopItem.fromJson(item)).toList();
    return ShopItemList(items: items);
  }
}


