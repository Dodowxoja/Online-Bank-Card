import 'package:dio/dio.dart';
import 'package:home/core/constants/url_const.dart';
import 'package:home/models/user_modes.dart';

class UserService {
  static Future<List<UserModels>> getUser() async {
    Response res = await Dio().get(UrlConst.baseUrl + '/users');
    return (res.data as List).map((e) => UserModels.fromJson(e)).toList();
  }
}
