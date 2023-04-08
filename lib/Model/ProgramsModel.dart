/// requestId : "3c82d0c2-269c-43e9-a1d5-9f7eb4d44257"
/// items : [{"createdAt":"2022-11-05T10:25:03.103Z","name":"Ergonomic Concrete Car","category":"Music","lesson":62,"id":"1"},{"createdAt":"2022-11-04T22:01:37.093Z","name":"Recycled Rubber Ball","category":"Home","lesson":42,"id":"2"},{"createdAt":"2022-11-05T07:20:49.474Z","name":"Fantastic Frozen Shoes","category":"Clothing","lesson":70,"id":"3"},{"createdAt":"2022-11-05T06:30:28.925Z","name":"Handcrafted Wooden Car","category":"Beauty","lesson":57,"id":"4"},{"createdAt":"2022-11-05T13:11:37.171Z","name":"Oriental Metal Chair","category":"Jewelery","lesson":14,"id":"5"},{"createdAt":"2022-11-04T22:14:02.632Z","name":"Fantastic Granite Gloves","category":"Movies","lesson":18,"id":"6"},{"createdAt":"2022-11-04T21:59:52.807Z","name":"Fantastic Steel Pizza","category":"Outdoors","lesson":100,"id":"7"},{"createdAt":"2022-11-04T23:07:33.049Z","name":"Elegant Soft Computer","category":"Movies","lesson":5,"id":"8"},{"createdAt":"2022-11-04T23:59:42.426Z","name":"Handmade Bronze Car","category":"Books","lesson":7,"id":"9"},{"createdAt":"2022-11-05T02:49:08.842Z","name":"Rustic Rubber Pants","category":"Music","lesson":90,"id":"10"},{"createdAt":"2022-11-04T23:17:12.774Z","name":"Practical Metal Soap","category":"Garden","lesson":91,"id":"11"},{"createdAt":"2022-11-04T21:00:37.686Z","name":"Practical Wooden Fish","category":"Beauty","lesson":71,"id":"12"},{"createdAt":"2022-11-05T06:05:25.986Z","name":"Fantastic Concrete Ball","category":"Sports","lesson":3,"id":"13"},{"createdAt":"2022-11-05T13:11:17.515Z","name":"Intelligent Steel Salad","category":"Home","lesson":81,"id":"14"},{"createdAt":"2022-11-05T07:29:05.631Z","name":"Refined Fresh Shoes","category":"Outdoors","lesson":55,"id":"15"},{"createdAt":"2022-11-05T14:17:59.673Z","name":"Tasty Concrete Fish","category":"Books","lesson":60,"id":"16"},{"createdAt":"2022-11-05T13:34:26.829Z","name":"Handmade Plastic Shoes","category":"Baby","lesson":43,"id":"17"},{"createdAt":"2022-11-05T06:32:53.511Z","name":"Luxurious Wooden Mouse","category":"Outdoors","lesson":63,"id":"18"},{"createdAt":"2022-11-05T11:37:10.848Z","name":"Bespoke Cotton Ball","category":"Outdoors","lesson":26,"id":"19"},{"createdAt":"2022-11-04T23:59:00.660Z","name":"Recycled Soft Car","category":"Computers","lesson":9,"id":"20"},{"createdAt":"2022-11-05T10:02:53.530Z","name":"Fantastic Granite Soap","category":"Kids","lesson":5,"id":"21"},{"createdAt":"2023-02-13T15:13:32.017Z","name":"Intelligent Frozen Cheese","category":"Movies","lesson":34,"id":"22"},{"createdAt":"2023-02-13T05:02:07.715Z","name":"Electronic Bronze Table","category":"Garden","lesson":31,"id":"23"},{"createdAt":"2023-02-13T12:17:12.954Z","name":"Gorgeous Plastic Ball","category":"Movies","lesson":38,"id":"24"},{"createdAt":"2023-02-12T21:11:15.797Z","name":"Generic Granite Chicken","category":"Movies","lesson":31,"id":"25"},{"createdAt":"2023-02-12T23:46:22.354Z","name":"Refined Cotton Table","category":"Games","lesson":48,"id":"26"}]
/// count : 26
/// anyKey : "anyValue"

class ProgramsModel {
  ProgramsModel({
      String? requestId,
      List<Items>? items,
      int? count,
      String? anyKey,}){
    _requestId = requestId;
    _items = items;
    _count = count;
    _anyKey = anyKey;
}

  ProgramsModel.fromJson(dynamic json) {
    _requestId = json['requestId'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _count = json['count'];
    _anyKey = json['anyKey'];
  }
  String? _requestId;
  List<Items>? _items;
  int? _count;
  String? _anyKey;

  String? get requestId => _requestId;
  List<Items>? get items => _items;
  int? get count => _count;
  String? get anyKey => _anyKey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['requestId'] = _requestId;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['count'] = _count;
    map['anyKey'] = _anyKey;
    return map;
  }

}

/// createdAt : "2022-11-05T10:25:03.103Z"
/// name : "Ergonomic Concrete Car"
/// category : "Music"
/// lesson : 62
/// id : "1"

class Items {
  Items({
      String? createdAt,
      String? name,
      String? category,
      int? lesson,
      String? id,}){
    _createdAt = createdAt;
    _name = name;
    _category = category;
    _lesson = lesson;
    _id = id;
}

  Items.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _category = json['category'];
    _lesson = json['lesson'];
    _id = json['id'];
  }
  String? _createdAt;
  String? _name;
  String? _category;
  int? _lesson;
  String? _id;

  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get category => _category;
  int? get lesson => _lesson;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['category'] = _category;
    map['lesson'] = _lesson;
    map['id'] = _id;
    return map;
  }

}