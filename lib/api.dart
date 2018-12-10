class StocksAPI {
  Status status;
  List<Data> data;

  StocksAPI({this.status, this.data});

  StocksAPI.fromJson(Map<String, dynamic> json) {
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  String timestamp;
  int errorCode;
  Null errorMessage;
  int elapsed;
  int creditCount;

  Status(
      {this.timestamp,
      this.errorCode,
      this.errorMessage,
      this.elapsed,
      this.creditCount});

  Status.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    elapsed = json['elapsed'];
    creditCount = json['credit_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timestamp'] = this.timestamp;
    data['error_code'] = this.errorCode;
    data['error_message'] = this.errorMessage;
    data['elapsed'] = this.elapsed;
    data['credit_count'] = this.creditCount;
    return data;
  }
}

class Data {
  int id;
  String name;
  String symbol;
  String slug;
  String circulatingSupply;
  String totalSupply;
  int maxSupply;
  String dateAdded;
  int numMarketPairs;
  List<String> tags;
  int cmcRank;
  String lastUpdated;
  Quote quote;

  Data(
      {this.id,
      this.name,
      this.symbol,
      this.slug,
      this.circulatingSupply,
      this.totalSupply,
      this.maxSupply,
      this.dateAdded,
      this.numMarketPairs,
      this.tags,
      this.cmcRank,
      this.lastUpdated,
      this.quote});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    circulatingSupply = json['circulating_supply'].toString();
    totalSupply = json['total_supply'].toString();
    maxSupply = json['max_supply'];
    dateAdded = json['date_added'];
    numMarketPairs = json['num_market_pairs'];
    tags = json['tags'] != null ? json['tags'].cast<String>(): null;
    cmcRank = json['cmc_rank'];
    lastUpdated = json['last_updated'];
    quote = json['quote'] != null ? new Quote.fromJson(json['quote']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['circulating_supply'] = this.circulatingSupply;
    data['total_supply'] = this.totalSupply;
    data['max_supply'] = this.maxSupply;
    data['date_added'] = this.dateAdded;
    data['num_market_pairs'] = this.numMarketPairs;
    data['tags'] = this.tags;
    data['cmc_rank'] = this.cmcRank;
    data['last_updated'] = this.lastUpdated;
    if (this.quote != null) {
      data['quote'] = this.quote.toJson();
    }
    return data;
  }
}

class Quote {
  USD uSD;

  Quote({this.uSD});

  Quote.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? new USD.fromJson(json['USD']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.uSD != null) {
      data['USD'] = this.uSD.toJson();
    }
    return data;
  }
}

class USD {
  double price;
  double volume24h;
  double percentChange1h;
  double percentChange24h;
  double percentChange7d;
  double marketCap;
  String lastUpdated;

  USD(
      {this.price,
      this.volume24h,
      this.percentChange1h,
      this.percentChange24h,
      this.percentChange7d,
      this.marketCap,
      this.lastUpdated});

  USD.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    volume24h = json['volume_24h'];
    percentChange1h = json['percent_change_1h'];
    percentChange24h = json['percent_change_24h'];
    percentChange7d = json['percent_change_7d'];
    marketCap = json['market_cap'];
    lastUpdated = json['last_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['volume_24h'] = this.volume24h;
    data['percent_change_1h'] = this.percentChange1h;
    data['percent_change_24h'] = this.percentChange24h;
    data['percent_change_7d'] = this.percentChange7d;
    data['market_cap'] = this.marketCap;
    data['last_updated'] = this.lastUpdated;
    return data;
  }
}