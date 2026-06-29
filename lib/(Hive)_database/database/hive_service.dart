import 'package:hive_flutter/hive_flutter.dart';

import '../models/user_model.dart';

class HiveService{
static Future init() async{
await Hive.openBox<UserModel>("users");
}

static Box<UserModel> get box =>
Hive.box<UserModel>("users");
static void addUser(UserModel user){
box.add(user);
}

static List<UserModel> getUsers(){
return box.values.toList();
}

static void deleteUser(int index){
box.deleteAt(index);
}

}