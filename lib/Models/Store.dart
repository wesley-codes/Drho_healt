

class Store {
  String id;
  // ignore: non_constant_identifier_names
  String item_Name;
  // ignore: non_constant_identifier_names
  String item_Subtitle;
  // ignore: non_constant_identifier_names
  String item_Image;

  // ignore: non_constant_identifier_names
  String item_Supplier;
  // ignore: non_constant_identifier_names
  int item_Price;
// ignore: non_constant_identifier_names
  String item_Size;
  // ignore: non_constant_identifier_names
  String item_Constituents;
  // ignore: non_constant_identifier_names
  String item_Despensed;
  int itemqyt;
  Store(
      {
// ignore: non_constant_identifier_names
      this.item_Image,
// ignore: non_constant_identifier_names
      this.item_Name,
// ignore: non_constant_identifier_names
      this.item_Price,
// ignore: non_constant_identifier_names
      this.item_Subtitle,
      // ignore: non_constant_identifier_names
      this.item_Supplier,
      // ignore: non_constant_identifier_names
      this.item_Constituents,
      // ignore: non_constant_identifier_names
      this.item_Despensed,
      // ignore: non_constant_identifier_names
      this.item_Size,
      this.itemqyt,
      this.id});
}

//POPULATING THE STOURE TO GET PRODUSCTS
    List<Store> storeItems = [
    Store(
      id: "N9JN30JF",
      item_Name: "Folic Acid(100)",
      item_Price: 70,
      item_Subtitle: "Tablet-250mg",
      item_Image: "https://tinyurl.com/48zstfkx",
      item_Supplier: "Folic Pharmaceuticals",
      item_Constituents: "water-soluble B vitamin",
      item_Despensed: "Container",
      item_Size: "4x10",
      itemqyt: 1
    ),
    Store(
        id: "3NRPWE87",
        item_Image: "https://tinyurl.com/v8xajhhc",
        item_Name: "Garlic Oil",
        item_Price: 385,
        item_Subtitle: "Soft Gel-650mg",
        item_Supplier: "Garlic Pharmaceuticals",
        item_Constituents: "Garlic Oil",
        item_Despensed: "Pack",
        item_Size: "2x8",
        itemqyt: 1
        ,),
    Store(
      id: "MM9HJ3PS",
      item_Image: "https://tinyurl.com/m8r59e78",
      item_Name: "Vitamin-C",
      item_Price: 300,
      item_Subtitle: "Acorbic 1000mg",
      item_Supplier: "Emzor Pharmaceuticals",
      item_Constituents: "Ascorbic Acid",
      item_Despensed: "Container",
      item_Size: "4x10",
      itemqyt: 1
    ),
    Store(
      id: "K2H34JOX",
      item_Image: "https://tinyurl.com/bwrzdxa5",
      item_Name: "Kezitil Susp.",
      item_Price: 1820,
      item_Subtitle: "Oral Suspension-125mg",
      item_Supplier: "Kezitil Pharmaceuticals",
      item_Constituents: "Cephalosporin antibiotic",
      item_Despensed: "Pack",
      item_Size: "3x5",
    ),
    Store(
      id: "jPL92IOCL",
      item_Image: "https://tinyurl.com/dpbtncy9",
      item_Name: "Kezitil",
      item_Price: 1140,
      item_Subtitle: "Tablet-250mg",
      item_Supplier: "Kezitil Pharmaceuticals",
      item_Constituents: "Cephalosporin antibiotic",
      item_Despensed: "Bottle",
      item_Size: "3x9",
      itemqyt: 1
    ),
    Store(
      id: "NV2K9LAS",
      item_Image: "https://tinyurl.com/25vdzu3b",
      item_Name: "Ibuprofen",
      item_Price: 2500,
      item_Subtitle: "Pain Relief",
      item_Supplier: "Ibuprofen Pharmaceuticals",
      item_Constituents: "microcrystalline cellulose",
      item_Despensed: "Pack",
      item_Size: "3x5",
      itemqyt: 1
    ),
    Store(
      id: "MKH49OKQA",
      item_Image: "https://tinyurl.com/25vdzu3b",
      item_Name: "Ibuprofen",
      item_Price: 2500,
      item_Subtitle: "Pain Relief",
      item_Supplier: "Ibuprofen Pharmaceuticals",
      item_Constituents: "microcrystalline cellulose",
      item_Despensed: "Pack",
      item_Size: "3x5",
      itemqyt: 1
    )
  ];
