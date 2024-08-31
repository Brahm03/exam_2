class CoinModel {
  String id;
  String name;
  String symbol;
  String rank;
  String priceUsd;
  String priceBtc;
  String the24HVolumeUsd;
  String marketCapUsd;
  String availableSupply;
  String totalSupply;
  String maxSupply;
  String percentChange1H;
  String percentChange24H;
  String percentChange7D;
  String lastUpdated;

  CoinModel({
    required this.id,
    required this.name,
    required this.symbol,
    required this.rank,
    required this.priceUsd,
    required this.priceBtc,
    required this.the24HVolumeUsd,
    required this.marketCapUsd,
    required this.availableSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.percentChange1H,
    required this.percentChange24H,
    required this.percentChange7D,
    required this.lastUpdated,
  });

  factory CoinModel.fromJson(Map<String, dynamic> json) => CoinModel(
        id: json["id"],
        name: json["name"],
        symbol: json["symbol"],
        rank: json["rank"],
        priceUsd: json["price_usd"],
        priceBtc: json["price_btc"],
        the24HVolumeUsd: json["24h_volume_usd"],
        marketCapUsd: json["market_cap_usd"],
        availableSupply: json["available_supply"],
        totalSupply: json["total_supply"],
        maxSupply: json["max_supply"],
        percentChange1H: json["percent_change_1h"],
        percentChange24H: json["percent_change_24h"],
        percentChange7D: json["percent_change_7d"],
        lastUpdated: json["last_updated"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "symbol": symbol,
        "rank": rank,
        "price_usd": priceUsd,
        "price_btc": priceBtc,
        "24h_volume_usd": the24HVolumeUsd,
        "market_cap_usd": marketCapUsd,
        "available_supply": availableSupply,
        "total_supply": totalSupply,
        "max_supply": maxSupply,
        "percent_change_1h": percentChange1H,
        "percent_change_24h": percentChange24H,
        "percent_change_7d": percentChange7D,
        "last_updated": lastUpdated,
      };
}
