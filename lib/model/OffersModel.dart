class offersModel {
  int count;
  String next;
  Null previous;
  List<Results> results;

  offersModel({this.count, this.next, this.previous, this.results});

  offersModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int id;
  int price;
  String desc;
  String condition;
  int minBuy;
  String image;
  String expireAt;
  String createdAt;
  int status;
  String userName;
  int userId;
  int walletId;
  String mobile;
  int userAge;
  String gender;
  String city;
  String province;
  String bd;
  String userImage;

  Results(
      {this.id,
        this.price,
        this.desc,
        this.condition,
        this.minBuy,
        this.image,
        this.expireAt,
        this.createdAt,
        this.status,
        this.userName,
        this.userId,
        this.walletId,
        this.mobile,
        this.userAge,
        this.gender,
        this.city,
        this.province,
        this.bd,
        this.userImage});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    desc = json['desc'];
    condition = json['condition'];
    minBuy = json['minBuy'];
    image = json['image'];
    expireAt = json['expire_at'];
    createdAt = json['created_at'];
    status = json['status'];
    userName = json['user_name'];
    userId = json['user_id'];
    walletId = json['wallet_id'];
    mobile = json['mobile'];
    userAge = json['user_age'];
    gender = json['gender'];
    city = json['city'];
    province = json['province'];
    bd = json['bd'];
    userImage = json['user_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['desc'] = this.desc;
    data['condition'] = this.condition;
    data['minBuy'] = this.minBuy;
    data['image'] = this.image;
    data['expire_at'] = this.expireAt;
    data['created_at'] = this.createdAt;
    data['status'] = this.status;
    data['user_name'] = this.userName;
    data['user_id'] = this.userId;
    data['wallet_id'] = this.walletId;
    data['mobile'] = this.mobile;
    data['user_age'] = this.userAge;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['province'] = this.province;
    data['bd'] = this.bd;
    data['user_image'] = this.userImage;
    return data;
  }
}

