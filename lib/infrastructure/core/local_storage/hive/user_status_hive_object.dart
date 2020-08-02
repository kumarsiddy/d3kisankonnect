import 'package:hive/hive.dart';

part 'user_status_hive_object.g.dart';

@HiveType(typeId: 0)
class UserStatusHiveObject {
  @HiveField(0)
  String token;
}
