import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class UserModel {

@HiveField(0)
String name;
@HiveField(1)
int age;


UserModel({
required this.name,
required this.age,

});
}

