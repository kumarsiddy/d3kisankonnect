// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_status_hive_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserStatusHiveObjectAdapter extends TypeAdapter<UserStatusHiveObject> {
  @override
  final int typeId = 0;

  @override
  UserStatusHiveObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserStatusHiveObject()..token = fields[0] as String;
  }

  @override
  void write(BinaryWriter writer, UserStatusHiveObject obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserStatusHiveObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
