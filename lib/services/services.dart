import 'package:dio/dio.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:job_task/contant/api/request.dart';
import 'package:job_task/model/watch_model.dart';

class Services {
  Future<List<WatchModel>> getList() async {
    List<WatchModel> allList = [];

    try {
      Response response = await Requests.get(true,
          params: 'api_key=163258633a4f8a9b8e151a0e8de054ac');
      print(response.data);
      for (var element in response.data['results']) {
        allList.add(WatchModel.fromMap(element));
        SmartDialog.dismiss;
      }
    } catch (e) {
      rethrow;
    }
    return allList;
  }
}
