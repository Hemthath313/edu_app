
import 'package:json_annotation/json_annotation.dart';

part 'user_modal.g.dart';

@JsonSerializable()

class Usermodel {
  final String? id;
  final String fullname;
  final String password;
  final String email;

  Usermodel(this.password, this.email, {required this.id, required this.fullname});
  factory Usermodel.fromJson(Map<String, dynamic> json) => _$UsermodelFromJson(json);

  Map<String, dynamic> toJson() => _$UsermodelToJson(this);
}


 
