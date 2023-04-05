import 'dart:convert';

import 'package:dio/dio.dart';

class DioClient {
  final Dio dioObj = Dio();
  final _baseUrl = 'http://188.166.223.189/api/v1/';
  final Map<String, dynamic> header = {
    'Authorization' :   'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjNjYjU4NzUyMDA0N2E1NmY2MTY5ODRiZDY3NTJhNDY3MmIzZWE5ZTRkNmI3NzM4MjQxYmI2NDk3MTI3NWFkNmM0YzU1NGUxOWY3N2RkN2NjIn0.eyJhdWQiOiIzIiwianRpIjoiM2NiNTg3NTIwMDQ3YTU2ZjYxNjk4NGJkNjc1MmE0NjcyYjNlYTllNGQ2Yjc3MzgyNDFiYjY0OTcxMjc1YWQ2YzRjNTU0ZTE5Zjc3ZGQ3Y2MiLCJpYXQiOjE2ODA1OTk2OTcsIm5iZiI6MTY4MDU5OTY5NywiZXhwIjoxNzEyMjIyMDk3LCJzdWIiOiIxMjEiLCJzY29wZXMiOltdfQ.JFp5_Bly93pP7JpzbAyHJiJ0sq09ojDCm47Ev0cOdEDkQvZg4PUeFWCYorozem3R5xRX-R3LJ-4bqVquG8T0Pk_5vdj1wfFOlmxBFPa_xJv_DeCZotTSpWbq-2Pge1RaH9Tg52iVn-yzkL_2YFWEyAwsRbpaKWOjcJebU7CNrgyUJ9iGUMcjWZv-XTfbVsRbBhs0mrGLUKmjKNcJrSJ_gxL38bEGJR67-9NbZUPvDtp5t-VJKiofZOabhmeu82Ugzl9JL1jrXG8YE9ZS8bTCEEHP34bgMoMUXLn02_wbW2De08ziZ6WUVI0O4UPCpXpNd4TMIB2WDokBjmhCwgomVHDCdxWLVHQFPiaP0oqL6vwTvnTV32_I_CWqLjT8Zk5CAeMDF36LljsCt14zG8wwMYRZJK5tNidWiLhBTTnYa11P156V07pFAV1iT28Bhp6MytxsOxnT2EOHq69rNiWM9UHNbeL2YSRvUASuEN9YAqltQw19pBFX7tNKXPv33TmxOfSQbtXi',
    'Accept' :' application/json',
  };


   postUserCred( Map<String, dynamic> UserCred) async {
     var reqData = jsonEncode(UserCred);
     try{
       Response responseData = await dioObj.post('${_baseUrl}login', data: reqData ,options: Options(headers: {
         'Accept' :' application/json',
       }));
       return responseData.data;
     }catch(e){
       print('Error logging user in $e');
     }
   }
   getUserdata()async{
     try{
       Response responseData = await dioObj.get('${_baseUrl}user-data/manager', options: Options(headers: header));
       print('get........responseData  $responseData.data');
       return responseData.data;
     }catch(e){
       print('Error getting user data $e');
     }
   }
}