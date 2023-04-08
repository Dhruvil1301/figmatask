/// requestId : "348e5d6e-0d4c-4e6c-9b54-496ab0bdd17f"
/// items : [{"createdAt":"2022-11-05T05:23:46.786Z","name":"Voluptatem aut aut eaque qui.","duration":23,"category":"Books","locked":false,"id":"1"},{"createdAt":"2022-11-05T07:55:34.221Z","name":"In sit quas eligendi.","duration":60,"category":"Jewelery","locked":false,"id":"2"},{"createdAt":"2022-11-05T15:56:27.994Z","name":"Quasi et aut eaque expedita suscipit quia consequatur dignissimos.","duration":38,"category":"Sports","locked":false,"id":"3"},{"createdAt":"2022-11-05T14:01:43.246Z","name":"Aspernatur autem incidunt assumenda est.","duration":74,"category":"Shoes","locked":false,"id":"4"},{"createdAt":"2022-11-05T17:06:43.844Z","name":"Explicabo cumque quas temporibus ex minima dolor.","duration":68,"category":"Outdoors","locked":false,"id":"5"},{"createdAt":"2022-11-05T09:15:39.486Z","name":"Architecto aperiam eum quod ullam illum sequi molestias deserunt a.","duration":67,"category":"Tools","locked":false,"id":"6"},{"createdAt":"2022-11-04T20:52:12.522Z","name":"Consequatur ipsa tenetur voluptatem id sunt incidunt eum quis.","duration":37,"category":"Movies","locked":false,"id":"7"},{"createdAt":"2022-11-04T20:16:41.781Z","name":"Ut quam et culpa sit.","duration":89,"category":"Electronics","locked":false,"id":"8"},{"createdAt":"2022-11-05T02:54:19.669Z","name":"Velit iste sunt.","duration":72,"category":"Automotive","locked":false,"id":"9"},{"createdAt":"2022-11-04T23:43:47.782Z","name":"Quia qui cumque magni quod unde et sunt dicta.","duration":47,"category":"Clothing","locked":false,"id":"10"},{"createdAt":"2022-11-05T09:07:33.308Z","name":"Aperiam nihil maxime qui voluptate.","duration":63,"category":"Health","locked":false,"id":"11"},{"createdAt":"2022-11-05T07:09:04.409Z","name":"Eveniet optio esse at id optio autem.","duration":26,"category":"Sports","locked":false,"id":"12"},{"createdAt":"2022-11-05T03:33:45.910Z","name":"Porro rerum blanditiis doloribus est esse maiores est consectetur.","duration":8,"category":"Outdoors","locked":false,"id":"13"},{"createdAt":"2022-11-04T20:19:27.276Z","name":"Quis ducimus consequatur.","duration":50,"category":"Outdoors","locked":false,"id":"14"},{"createdAt":"2022-11-05T03:09:58.863Z","name":"Non tempora deserunt dolor totam.","duration":63,"category":"Jewelery","locked":false,"id":"15"},{"createdAt":"2022-11-05T08:39:50.116Z","name":"Non qui aut debitis quaerat laboriosam quod pariatur placeat officiis.","duration":59,"category":"Health","locked":false,"id":"16"},{"createdAt":"2022-11-05T17:52:13.744Z","name":"Saepe voluptatem laboriosam cum sed ut.","duration":36,"category":"Books","locked":false,"id":"17"},{"createdAt":"2023-02-12T19:54:25.280Z","name":"Omnis quidem dignissimos.","duration":30,"category":"Garden","locked":false,"id":"18"},{"createdAt":"2023-02-13T15:34:12.803Z","name":"Esse ullam possimus ullam modi amet.","duration":66,"category":"Music","locked":false,"id":"19"}]
/// count : 19
/// anyKey : "anyValue"

class LessonModel {
  LessonModel({
      String? requestId, 
      List<Items>? items, 
      int? count, 
      String? anyKey,}){
    _requestId = requestId;
    _items = items;
    _count = count;
    _anyKey = anyKey;
}

  LessonModel.fromJson(dynamic json) {
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

/// createdAt : "2022-11-05T05:23:46.786Z"
/// name : "Voluptatem aut aut eaque qui."
/// duration : 23
/// category : "Books"
/// locked : false
/// id : "1"

class Items {
  Items({
      String? createdAt, 
      String? name, 
      int? duration, 
      String? category, 
      bool? locked, 
      String? id,}){
    _createdAt = createdAt;
    _name = name;
    _duration = duration;
    _category = category;
    _locked = locked;
    _id = id;
}

  Items.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _duration = json['duration'];
    _category = json['category'];
    _locked = json['locked'];
    _id = json['id'];
  }
  String? _createdAt;
  String? _name;
  int? _duration;
  String? _category;
  bool? _locked;
  String? _id;

  String? get createdAt => _createdAt;
  String? get name => _name;
  int? get duration => _duration;
  String? get category => _category;
  bool? get locked => _locked;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['duration'] = _duration;
    map['category'] = _category;
    map['locked'] = _locked;
    map['id'] = _id;
    return map;
  }

}