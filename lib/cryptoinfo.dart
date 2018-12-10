class CryptoInfo {
  Status status;
  Data data;

  CryptoInfo({this.status, this.data});

  CryptoInfo.fromJson(Map<String, dynamic> json) {
    status =
        json['status'] != null ? new Status.fromJson(json['status']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data.toJson();
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
  ADA aDA;
  BCH bCH;
  BTC bTC;
  EOS eOS;
  ETH eTH;
  LTC lTC;
  USDT uSDT;
  XLM xLM;
  XMR xMR;
  XRP xRP;

  Data(
      {this.aDA,
      this.bCH,
      this.bTC,
      this.eOS,
      this.eTH,
      this.lTC,
      this.uSDT,
      this.xLM,
      this.xMR,
      this.xRP});

  Data.fromJson(Map<String, dynamic> json) {
    aDA = json['ADA'] != null ? new ADA.fromJson(json['ADA']) : null;
    bCH = json['BCH'] != null ? new BCH.fromJson(json['BCH']) : null;
    bTC = json['BTC'] != null ? new BTC.fromJson(json['BTC']) : null;
    eOS = json['EOS'] != null ? new EOS.fromJson(json['EOS']) : null;
    eTH = json['ETH'] != null ? new ETH.fromJson(json['ETH']) : null;
    lTC = json['LTC'] != null ? new LTC.fromJson(json['LTC']) : null;
    uSDT = json['USDT'] != null ? new USDT.fromJson(json['USDT']) : null;
    xLM = json['XLM'] != null ? new XLM.fromJson(json['XLM']) : null;
    xMR = json['XMR'] != null ? new XMR.fromJson(json['XMR']) : null;
    xRP = json['XRP'] != null ? new XRP.fromJson(json['XRP']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aDA != null) {
      data['ADA'] = this.aDA.toJson();
    }
    if (this.bCH != null) {
      data['BCH'] = this.bCH.toJson();
    }
    if (this.bTC != null) {
      data['BTC'] = this.bTC.toJson();
    }
    if (this.eOS != null) {
      data['EOS'] = this.eOS.toJson();
    }
    if (this.eTH != null) {
      data['ETH'] = this.eTH.toJson();
    }
    if (this.lTC != null) {
      data['LTC'] = this.lTC.toJson();
    }
    if (this.uSDT != null) {
      data['USDT'] = this.uSDT.toJson();
    }
    if (this.xLM != null) {
      data['XLM'] = this.xLM.toJson();
    }
    if (this.xMR != null) {
      data['XMR'] = this.xMR.toJson();
    }
    if (this.xRP != null) {
      data['XRP'] = this.xRP.toJson();
    }
    return data;
  }
}

class ADA {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  Null tags;
  String category;

  ADA(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  ADA.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class Urls {
  List<String> website;
  List<String> twitter;
  List<String> reddit;
  List<String> messageBoard;
  List<String> announcement;
  List<String> chat;
  List<String> explorer;
  List<String> sourceCode;

  Urls(
      {this.website,
      this.twitter,
      this.reddit,
      this.messageBoard,
      this.announcement,
      this.chat,
      this.explorer,
      this.sourceCode});

  Urls.fromJson(Map<String, dynamic> json) {
    website = json['website'].cast<String>();
    twitter = json['twitter'].cast<String>();
    reddit = json['reddit'].cast<String>();
    messageBoard = json['message_board'].cast<String>();
    announcement = json['announcement'].cast<String>();
    chat = json['chat'].cast<String>();
    explorer = json['explorer'].cast<String>();
    sourceCode = json['source_code'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['website'] = this.website;
    data['twitter'] = this.twitter;
    data['reddit'] = this.reddit;
    data['message_board'] = this.messageBoard;
    data['announcement'] = this.announcement;
    data['chat'] = this.chat;
    data['explorer'] = this.explorer;
    data['source_code'] = this.sourceCode;
    return data;
  }
}

class BCH {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  List<String> tags;
  String category;

  BCH(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  BCH.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class BTC {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  List<String> tags;
  String category;

  BTC(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  BTC.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class EOS {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  Null tags;
  String category;

  EOS(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  EOS.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class ETH {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  List<String> tags;
  String category;

  ETH(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  ETH.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class LTC {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  List<String> tags;
  String category;

  LTC(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  LTC.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class USDT {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  Null tags;
  String category;

  USDT(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  USDT.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class XLM {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  Null tags;
  String category;

  XLM(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  XLM.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class XMR {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  List<String> tags;
  String category;

  XMR(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  XMR.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'].cast<String>();
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}

class XRP {
  Urls urls;
  String logo;
  int id;
  String name;
  String symbol;
  String slug;
  String dateAdded;
  Null tags;
  String category;

  XRP(
      {this.urls,
      this.logo,
      this.id,
      this.name,
      this.symbol,
      this.slug,
      this.dateAdded,
      this.tags,
      this.category});

  XRP.fromJson(Map<String, dynamic> json) {
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
    logo = json['logo'];
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    dateAdded = json['date_added'];
    tags = json['tags'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.urls != null) {
      data['urls'] = this.urls.toJson();
    }
    data['logo'] = this.logo;
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['date_added'] = this.dateAdded;
    data['tags'] = this.tags;
    data['category'] = this.category;
    return data;
  }
}
