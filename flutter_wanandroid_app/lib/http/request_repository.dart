import 'package:flutter_wanandroid_app/http/http_request.dart';
import 'package:flutter_wanandroid_app/http/request.dart';
import 'package:flutter_wanandroid_app/http/request_api.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';

typedef SuccessOver<T> = Function(T data, bool over);

///@FileName app_config
///@Date 2021/12/17  9:46
///@author zf
///@des TODO 数据请求管理类
class RequestRepository {

  //登录
  //account 账号
  //password 账号
  //success 成功回调
  //fail 失败回调
  void login(String account, String password,
      {Success<UserEntity>? success, Fail? fail}) {
    Map<String,String> map = {"username":account,"password":password};
    Request.post<dynamic>(RequestApi.apiLogin,map,success: (data){
       var loginInfo = UserEntity.fromJson(data);
       loginInfo.password = password;
       SpUtil.putUserInfo(loginInfo);
       if(success != null){
         success(loginInfo);
       }
    },fail: (code,msg){
      if(fail != null){
         fail(code,msg);
      }
    });
  }

}
