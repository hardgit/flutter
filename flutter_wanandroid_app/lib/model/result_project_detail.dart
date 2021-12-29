///@FileName result_project_detail
///@Date 2021/12/28  14:12
///@author zf
///@Description TODO 项目详情

class ProjectPage {
  ///当前页数
  int curPage = 0;
  ///当前页大小
  int size = 0;
  ///数据总大小
  int total = 0;
  ///数据
  List datas = [];
  ///偏移
  int offset = 0;
  ///是否为最后一页
  bool over = false;
  ///页数长度
  int pageCount = 0;

  ProjectPage.from(Map<dynamic,dynamic> json){
    curPage = json["curPage"];
    size = json["size"];
    total = json["total"];
    datas = json["datas"];
    offset = json["offset"];
    over = json["over"];
    pageCount = json["pageCount"];
  }


}

class ResultProjectDetail{
  String apkLink = "";
  int audit = 0;
  String author = "";
  bool canEdit = false;
  int chapterId = 0;
  String chapterName = "";
  bool collect = false;
  int courseId = 0;
  String desc = "";
  String descMd = "";
  String envelopePic = "";
  bool fresh = false;
  String host = "";
  int id = 0;
  String link = "";
  String niceDate = "";
  String niceShareDate = "";
  String origin = "";
  String prefix = "";
  String projectLink = "";
  int publishTime = 0;
  int realSuperChapterId = 0;
  int selfVisible = 0;
  int shareDate = 0;
  String shareUser = "";
  int superChapterId = 0;
  String superChapterName = "";
  List tags = [];
  String title = "";
  int type = 0;
  int userId = 0;
  int visible = 0;
  int zan = 0;

  ResultProjectDetail.fromJson(Map<dynamic,dynamic> json){
    apkLink = json["apkLink"];
    audit = json["audit"];
    canEdit = json["canEdit"];
    chapterId = json["chapterId"];
    collect = json["collect"];
    desc = json["desc"];
    descMd = json["descMd"];
    envelopePic = json["envelopePic"];
    fresh = json["fresh"];
    host = json["host"];
    id = json["id"];
    link = json["link"];
    niceDate = json["niceDate"];
    niceShareDate = json["niceShareDate"];
    origin = json["origin"];
    prefix = json["prefix"];
    projectLink = json["projectLink"];
    publishTime = json["publishTime"];
    realSuperChapterId = json["realSuperChapterId"];
    selfVisible = json["selfVisible"];
    shareDate = json["shareDate"];
    shareUser = json["shareUser"];
    superChapterId = json["superChapterId"];
    superChapterName = json["superChapterName"];
    tags = json["tags"];
    title = json["title"];
    type = json["type"];
    userId = json["userId"];
    visible = json["visible"];
    zan = json["zan"];
  }

}