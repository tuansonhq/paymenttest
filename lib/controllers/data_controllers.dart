import 'dart:math';

import 'package:get/get.dart';
import 'package:payment/services/data_services.dart';

class DataController extends GetxController{
  var list = [].obs;
  final service = new DataServices();
  var _loading = false.obs;

  get loading{
    return _loading.value;
  }

  // get loading => _loading.value;

  @override
  void onInit(){
    super.onInit();
    _loadData();
  }

  get newList{
    return list.where((e) => e["status"]).map((e) => e).toList();
  }

  _loadData() async {
    _loading.value =false;
    try{
      var info =  service.getUsers();
      list.addAll(await info);
    }catch(e){
      print("Encountered error !");
      print(e);
    }finally{
      _loading.value = true;
    }

  }
}