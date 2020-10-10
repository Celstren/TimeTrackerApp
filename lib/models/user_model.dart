class UserModel {
  int userType;

  UserModel({this.userType = 0});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    userType: json["userType"] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    "userType": this.userType ?? 0,
  };
}