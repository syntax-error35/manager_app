import 'package:get/get.dart';
import 'package:manager_app/screens/user_details/user_detail_screen.dart';

import '../../models/user/user_dm.dart';
import '../../network/dio_client.dart';

class UserController extends GetxController{
   List<DataDm> userList = [];
   @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    getResponse();
  }
  getResponse() async{
     try{
        var responseData = await DioClient().getUserdata();
        print('responseData  $responseData');
        UserDm userData = UserDm.fromJson(responseData);
        userList = userData.data ?? [];
        print('Statuscode ${userData.code}');
     }catch(e){
        print('Error occured $e');
     }
  }

}