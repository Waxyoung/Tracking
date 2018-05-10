function [trcletsInfo,tracklets,changeRate] = linkConsecutiveFrame(trcletsInfo,tracklets)
% [trcletsInfo,tracklets,changeRate] = linkConsecutiveFrame(trcletsInfo,tracklets)
% ---------------------------------------------------------------
% Adaptive Discriminative Feature Learning
% Copyright (c) 2016, Shun Zhang

% The code may be used free of charge for non-commercial and
% educational purposes, the only requirement is that this text is
% preserved within the derivative work. For any other purpose you
% must contact the authors for permission. This code may not be
% redistributed without written permission from the authors.
% ---------------------------------------------------------------

changeRate = 0;
lens = getRow(tracklets);
for jj=1:lens
    j = lens-jj+1;%jj��ǰ��֡   j:���֡
    rj = tracklets(j,3:4);%��j֡������֡��Ϣ��֡�ţ�Ŀ��id��
    ind = find(tracklets(:,1)==rj(1));%��j֡������֡�������б�
    if isempty(ind)
        continue;
    end
    
    num = length(ind);
    temp = tracklets(ind,2);%��j֡������֡Ŀ��id�б�
    idx = find(temp==rj(2));%��j֡������֡��ͬĿ��id�������ţ��˴�����������temp�еģ�
    if isempty(idx)
        continue;
    else
        trcletsInfo{ind(idx)}.traj(1,:) = [];
        trcletsInfo{j}.traj = [trcletsInfo{j}.traj;trcletsInfo{ind(idx)}.traj];
        trcletsInfo{j}.rj = trcletsInfo{ind(idx)}.rj;
        trcletsInfo{j}.num = trcletsInfo{j}.num+trcletsInfo{ind(idx)}.num;
        trcletsInfo(ind(idx)) = [];
        tracklets(j,3:4) = tracklets(ind(idx),3:4); 
        tracklets(ind(idx),:) = [];
        changeRate = 1;
    end
end;
