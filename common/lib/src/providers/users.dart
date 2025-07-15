import 'package:common/src/models/user/user.dart';

abstract class BaseUsersProvider {
  BaseUsersProvider();

  Future<List<UserModel>> getUsers();

  Future<List<String>> getTopics();
}
