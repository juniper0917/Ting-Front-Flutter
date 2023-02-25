import 'package:get/get.dart';
import 'package:json_annotation/json_annotation.dart';

part 'userInfo.g.dart';

@JsonSerializable()
class UserModel {
  int? userId;
  String? kakaoEmail;
  int? teamId;
  int? matchId;
  List<String>? states;
  String? image;
  String? nickname;
  String? schoolName;
  String? phone;
  String? major;
  String? schoolNum;
  String? birthday;
  int? success;
  int? fail;
  RxList<FriendModel> friends = RxList<FriendModel>();
  Rx<TeamModel> team = Rx<TeamModel>(TeamModel());
  RxList<MatchModel> matches = RxList<MatchModel>();

  UserModel({
    this.userId,
    this.kakaoEmail,
    this.teamId,
    this.matchId,
    this.states,
    this.image,
    this.nickname,
    this.schoolName,
    this.phone,
    this.major,
    this.schoolNum,
    this.birthday,
    this.success,
    this.fail,
    List<FriendModel>? friends,
    TeamModel? team,
    List<MatchModel>? matches,
  }) {
    this.friends.addAll(friends ?? []);
    this.team.value = team ?? TeamModel();
    this.matches.addAll(matches ?? []);
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class TeamModel {
  int? teamId;
  String? leaderNickname;
  String? member1Nickname;
  String? member2Nickname;
  List<String>? preference;
  int? isMatching;

  TeamModel({
    this.teamId,
    this.leaderNickname,
    this.member1Nickname,
    this.member2Nickname,
    this.preference,
    this.isMatching,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);
}

@JsonSerializable()
class MatchModel {
  String? nickname;
  int? gender;
  int? age;
  String? major;
  String? image;
  String? schoolNum;

  MatchModel({
    this.nickname,
    this.gender,
    this.age,
    this.major,
    this.image,
    this.schoolNum,
  });

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}

@JsonSerializable()
class FriendModel {
  String? nickname;
  String? kakaoName;
  int? gender;
  int? age;
  String? birthday;
  String? major;
  String? image;
  String? schoolNum;
  int? isHidden;

  FriendModel({
    this.nickname,
    this.kakaoName,
    this.gender,
    this.age,
    this.birthday,
    this.major,
    this.image,
    this.schoolNum,
    this.isHidden,
  });

  factory FriendModel.fromJson(Map<String, dynamic> json) =>
      _$FriendModelFromJson(json);

  Map<String, dynamic> toJson() => _$FriendModelToJson(this);
}
