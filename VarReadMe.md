##全局变量projInfo


projInfo.video_name = [];//视频名称

projInfo.method_face_det = 'HeadHunter';//检查方法
projInfo.method_conts = 'trcks';//
projInfo.method_feature = 'PreTrain';//特征提取方法

projInfo.home = [pwd,'/'];//获取根目录
projInfo.imgDir = [];//图片目录
projInfo.sceneShots = [];// 镜头转化数
projInfo.nbclusters = [];//聚类数
projInfo.network_loss = 'Triplet';
projInfo.scaleBox = 2.2;
projInfo.nbclusters = 6;

projInfo.context.ExtractNumOfTrckMustNot = 20;
projInfo.context.ExtractNumOfTrckMust = 20;

projInfo.currDir //当前目录
projInfo.resDir  //
projInfo.myResDir  //

projInfo.faceDets.mat = 'dets/res_Tara_HeadHunter.mat'; //识别出的人脸坐标mat文件
projInfo.faceDets.scaleXY = [1.1,1.4]; //人脸尺度
projInfo.faceDets.thr = 0.08; //置信度阈值

projInfo.faceDets.res = res; //对低置信度的人脸进行了去除

res：
loadDemoDets:加载的人脸坐标文件，包括了图片地址，每张图的人脸数目和位置信息
