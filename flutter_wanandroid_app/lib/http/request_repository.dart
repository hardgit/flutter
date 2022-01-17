import 'package:flutter_wanandroid_app/http/http_request.dart';
import 'package:flutter_wanandroid_app/http/request.dart';
import 'package:flutter_wanandroid_app/http/request_api.dart';
import 'package:flutter_wanandroid_app/model/result_project_detail.dart';
import 'package:flutter_wanandroid_app/model/result_user_entity.dart';
import 'package:flutter_wanandroid_app/res/strings.dart';
import 'package:flutter_wanandroid_app/utils/sp_util.dart';

typedef SuccessOver<T> = Function(T data, bool over);

///@FileName app_config
///@Date 2021/12/17  9:46
///@author zf
///@des TODO 数据请求管理类
class RequestRepository {

  ///todo [account] 账号
  ///todo [isCheckPrivacy] 是否记住密码
  ///todo [password] 密码
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 登录
  void login(String account, bool isCheckPrivacy, String password,
      {Success<UserEntity>? success, Fail? fail}) {
    Map<String, String> map = {"username": account, "password": password};
    Request.post<dynamic>(RequestApi.apiLogin, map, success: (data) {
      var loginInfo = UserEntity.fromJson(data);
      loginInfo.password = password;
      SpUtil.putUserInfo(loginInfo);
      SpUtil.putBool(StringStyles.isCheckPrivacy,isCheckPrivacy);
      if (success != null) {
        success(loginInfo);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }

  ///todo [account] 账号
  ///todo [password] 密码
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 注册
  void register(String account,String password,String repassword
      ,{Success<dynamic>? success,Fail? fail}){
    Map<String, String> map = {"username": account, "password": password,"repassword":repassword};
    Request.post(RequestApi.apiRegister, map,success: (data){
      if(success!=null){
        success(data);
      }
    },fail: (code,msg){
        if(fail != null){
          fail(code,msg);
        }
    });
  }


  ///todo [page] 页数
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 首页-首页列表分页
  void requestHomeArticle(int page,
      {SuccessOver<List<ResultProjectDetail>>? success, Fail? fail}) {
    Request.get<dynamic>(
        RequestApi.apiHome.replaceFirst(RegExp("page"), "${page - 1}"), {},
        dialog: false, success: (data) {
      ProjectPage page = ProjectPage.from(data);
      var list = page.datas.map((data) {
        return ResultProjectDetail.fromJson(data);
      }).toList();
      if (success != null) {
        success(list, page.over);
      }
    }, fail: (code, msg) {
      if (fail != null) {
        fail(code, msg);
      }
    });
  }

  ///todo [page] 页数
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 首页-广场分页
  void requestSquare(int page,
      {SuccessOver<List<ResultProjectDetail>>? success, Fail? fail}) {
    Request.get<dynamic>(
        RequestApi.apiSquare.replaceFirst(RegExp("page"), "${page - 1}"), {},
        dialog: false, success: (data) {
      ProjectPage projectPage = ProjectPage.from(data);
      List<ResultProjectDetail> list = projectPage.datas.map((item) {
        return ResultProjectDetail.fromJson(item);
      }).toList();
      if (success != null) {
        success(list, projectPage.over);
      }
    },
        fail: (code, msg) {
          if (fail != null) {
            fail(code, msg);
          }
        });
  }

  ///todo [page] 页数
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 首页-问答分页
  void requestAskArticle(int page,
      {SuccessOver<List<ResultProjectDetail>>? success, Fail? fail}) {
    Request.get<dynamic>(
        RequestApi.apiAsk.replaceFirst(RegExp("page"), "${page - 1}"), {},
        dialog: false, success: (data) {
      ProjectPage projectPage = ProjectPage.from(data);
      List<ResultProjectDetail> list = projectPage.datas.map((item) {
        return ResultProjectDetail.fromJson(item);
      }).toList();
      if (success != null) {
        success(list, projectPage.over);
      }
    },
        fail: (code, msg) {
          if (fail != null) {
            fail(code, msg);
          }
        });
  }
  ///todo [page] 页数
  ///todo [success] 成功回调
  ///todo [fail] 失败回调
  ///todo 项目分页
  void requestProjectsModule(int page,
      SuccessOver<List<ResultProjectDetail>> success,
      Fail fail) {
    Request.get<dynamic>(
        RequestApi.apiProject.replaceFirst(RegExp("page"), "${page - 1}"),
        {}, dialog: false, success: (data) {
      ProjectPage projectPage = ProjectPage.from(data);
      List<ResultProjectDetail> list = projectPage.datas.map((item) {
        return ResultProjectDetail.fromJson(item);
      }).toList();
      if (success!=null) {
        success(list,projectPage.over);
      }
    }, fail: (code, msg) {
       if(fail!=null){
         fail(code,msg);
       }
    });
  }

}
