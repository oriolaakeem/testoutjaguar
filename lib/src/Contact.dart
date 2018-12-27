import 'package:json_annotation/json_annotation.dart';
part 'Contact.g.dart';

@JsonSerializable()
class Contact extends Object
{
  String id;
  String name;
  String email;
  bool isVerified;

  Contact(
       {
          this.id,
          this.name,
          this.email,
          this.isVerified,
       });

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}

