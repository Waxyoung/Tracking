VideoPath='E:\TrackIng\AdaptiveFeatureLearning\T-ara.mp4';
obj=VideoReader(VideoPath);
numFrames=obj.NumberOfFrame;
for k=1:numFrames 
    frame=read(obj,k);
    writeName=strcat('E:\TrackIng\AdaptiveFeatureLearning\data\Tara\',num2str(k,'%05d'),'.jpg');
    imwrite(frame,writeName,'jpg');
end

%function gTruth= dataAnotation(VideoPath,dataPath)
%DATAANOTATION 此处显示有关此函数的摘要
%   此处显示详细说明[dataSource,labelDefs,gTruth]

% fileFolder=fullfile('E:\TrackIng\FaceTracking\Annotation\tiny\Video');
% dirOutput=dir(fullfile(fileFolder,'*.mp4'));
% fileNames={dirOutput.name}';
% for i=3:3
%     VideoPath=strcat('E:\TrackIng\FaceTracking\Annotation\tiny\Video\',fileNames{i,1});
%     obj=VideoReader(VideoPath);
%     videoName=regexp(VideoPath,'\','split');
%     fileName=videoName{end}(1:end-4);
%     mkdir('VideoFrame/',fileName);
%     numFrames=obj.NumberOfFrame;
%     %numFrames=10;
%     imageFilenames=cell(numFrames,1); 
%     
% 
%     for k=1:numFrames    
%         frame=read(obj,k);
%         writeName=strcat('E:\TrackIng\FaceTracking\Annotation\tiny\VideoFrame\',fileName,'\',num2str(k),'.jpg');
%         imageFilenames{k,1}=writeName;
%         imwrite(frame,writeName,'jpg');
%     end
%     filenameDir=strcat('E:\TrackIng\FaceTracking\Annotation\tiny\VideoFrame\',fileName,'\',fileName,'.mat');
%     save(filenameDir,'imageFilenames');
%     fprintf('The %dst was finshed.\n',i);
% end
% obj=VideoReader(VideoPath);
% videoName=regexp(VideoPath,'\','split');
% fileName=videoName{end}(1:end-4);
% mkdir('VideoFrame/',fileName);
% numFrames=obj.NumberOfFrame;
% %numFrames=10;
% 
% imageFilenames=cell(numFrames,1); 
% 
% for k=1:numFrames    
%       frame=read(obj,k);
%       writeName=strcat('E:\TrackIng\FaceTracking\Annotation\tiny\VideoFrame\',fileName,'\',num2str(k),'.jpg');
%       imageFilenames{k,1}=writeName;
%       imwrite(frame,writeName,'jpg');
% end


% 
% dataPath='result.mat';%已标注数据
% data=load('E:\TrackIng\FaceTracking\Annotation\tiny\VideoFrame\20161213101642_02\20161213101642_02.mat');%图片文件地址
% imageFilenames=data.imageFilenames;
% filesSize=size(imageFilenames);
% numFrames=filesSize(1);
% dataSource = groundTruthDataSource(imageFilenames);
% % 
% % 
% data=load(dataPath);
% faceNum=1;
% names=cell(faceNum,1);
% types = [labelType('Rectangle')];
% proTable=cell(1,faceNum);
% for i=1:faceNum
%     names{i,1}=strcat('ID_',num2str(i));
%     types(i,1)=labelType('Rectangle');
%     proTable{1,i}=cell(numFrames,1);
% end
% labelDefs = table(names,types,'VariableNames',{'Name','Type'});
% 
% 
% 
% for i=1:numFrames
%     boxData=data.allbboxes{i,1};
%     dataproTableize=size(boxData);
%     for j=1:faceNum
%         k=find(boxData(:,7)==j);
%         [m,n]=size(k);
%         if(j>dataproTableize(1) && m==0)
%             proTable{1,j}{i,1}=double([0 0 0 0]);
%             proTable{1,j}{i,1}=double([0 0 0 0]);
%             proTable{1,j}{i,1}=double([0 0 0 0]);
%             proTable{1,j}{i,1}=double([0 0 0 0]);
%             continue;
%         end      
%         for h=1:m
%             proTable{1,j}{i,1}=[ proTable{1,j}{i,1};double([boxData(h,1)...
%                                 boxData(h,2)...
%                                 boxData(h,3)-boxData(h,1) ...
%                                 boxData(h,4)-boxData(h,2)])];
%         end
%     end
% end
%       
% % labelData=table(proTable{1,1},proTable{1,2},proTable{1,3},proTable{1,4},...
% %                 proTable{1,5},proTable{1,6},proTable{1,7},proTable{1,8},...
% %                 proTable{1,9},proTable{1,10},proTable{1,11},proTable{1,12},...
% %                 proTable{1,13},proTable{1,14},proTable{1,15},proTable{1,16},...
% %                 proTable{1,17},proTable{1,18},proTable{1,19},proTable{1,20},...
% %                 proTable{1,21},proTable{1,22},proTable{1,23},proTable{1,24},...
% %                 proTable{1,25},proTable{1,26},proTable{1,27},proTable{1,28},...
% %                 proTable{1,29},proTable{1,30},proTable{1,31},proTable{1,32},...
% %                 proTable{1,33},proTable{1,34},proTable{1,35},proTable{1,36},...
% %                 proTable{1,37},proTable{1,38},proTable{1,39},proTable{1,40},...
% %                 proTable{1,41},proTable{1,42},proTable{1,43},proTable{1,44},...
% %                 proTable{1,45},'VariableNames',...
% %                 {names{1,1},names{2,1},names{3,1},names{4,1},...
% %                 names{5,1},names{6,1},names{7,1},names{8,1},...
% %                 names{9,1},names{10,1},names{11,1},names{12,1},...
% %                 names{13,1},names{14,1},names{15,1},names{16,1},...
% %                 names{17,1},names{18,1},names{19,1},names{20,1},...
% %                 names{21,1},names{22,1},names{23,1},names{24,1},...
% %                 names{25,1},names{26,1},names{27,1},names{28,1},...
% %                 names{29,1},names{30,1},names{31,1},names{32,1},...
% %                 names{33,1},names{34,1},names{35,1},names{36,1},...
% %                 names{37,1},names{38,1},names{39,1},names{40,1},...
% %                 names{41,1},names{42,1},names{43,1},names{44,1},...
% %                 names{45,1}});
% labelData=table(proTable{1,1},'VariableNames',{names{1,1}});
% gTruth=groundTruth(dataSource,labelDefs,labelData)       
%         
% 
% outputArg1 = inputArg1;
% outputArg2 = inputArg2;




