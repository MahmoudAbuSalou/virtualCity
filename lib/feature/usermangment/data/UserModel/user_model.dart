class UserResponse {
  User? user;
  String? token;

  UserResponse({this.user, this.token});

  UserResponse.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }


}

class User {
  String? username;
  String? email;
  String? birthday;
  String? key;
  String? updatedAt;
  String? createdAt;
  int? id;

  User(
      {this.username,
        this.email,
        this.birthday,
        this.key,
        this.updatedAt,
        this.createdAt,
        this.id});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    birthday = json['birthday'];
    key = json['key'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }


}