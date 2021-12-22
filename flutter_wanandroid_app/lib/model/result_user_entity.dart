///@FileName result_user_entity
///@Date 2021/12/21  14:33
///@author zf
///@Description TODO 登录时返回实体

class UserEntity{

  bool admin = false;
  List<dynamic> chapterTops = [];
  int coinCount = 0;
  List<dynamic> collectIds = [];
  String email = '';
  String icon = '';
  int id = 0;
  String nickname = '';
  String password = '';
  String publicName = '';
  String token = '';
  int type = 0;
  String username = '';

  UserEntity({
    required this.admin,
    required this.chapterTops,
    required this.coinCount,
    required this.collectIds,
    required this.email,
    required this.icon,
    required this.id,
    required this.nickname,
    required this.password,
    required this.publicName,
    required this.token,
    required this.type,
    required this.username,
  });

  UserEntity.fromJson(Map<dynamic,dynamic> json){
    admin = json["admin"];
    chapterTops = json["chapterTops"];
    coinCount = json["coinCount"];
    collectIds = json["collectIds"];
    email = json["email"];
    icon = json["icon"];
    id = json["id"];
    nickname = json["nickname"];
    password = json["password"];
    publicName = json["publicName"];
    token = json["token"];
    username = json["username"];
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> data = <String,dynamic>{};
    data["admin"] = admin;
    data["chapterTops"] = chapterTops;
    data["coinCount"] = coinCount;
    data["collectIds"] = collectIds;
    data["email"] = email;
    data["icon"] = icon;
    data["id"] = id;
    data["nickname"] = nickname;
    data["password"] = password;
    data["publicName"] = publicName;
    data["token"] = token;
    data["username"] = username;
    return data;
  }

}