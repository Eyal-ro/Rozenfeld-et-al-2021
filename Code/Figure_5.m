%% Figure 5
clc;clear;load('Figure_5.mat');

%% Rescue

clc;clear;load('Figure_5.mat');
figure;bar(1,nanmean(GH298_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(GH298_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(UAS_dm1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(UAS_dm1_after),0.4,'FaceAlpha',0.1);
hold on;
bar(5,nanmean(GH298_UAS_dm1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(6,nanmean(GH298_UAS_dm1_after),0.4,'FaceAlpha',0.1);
hold on;
bar(7,nanmean(kk_GH298_UAS_dm1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(8,nanmean(kk_GH298_UAS_dm1_after),0.4,'FaceAlpha',0.1);
hold on;
bar(9,nanmean(MB247_before),0.4,'FaceAlpha',0.1);
hold on;
bar(10,nanmean(MB247_after),0.4,'FaceAlpha',0.1);
hold on;
bar(11,nanmean(MB247_UAS_dm1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(12,nanmean(MB247_UAS_dm1_after),0.4,'FaceAlpha',0.1);
hold on;
bar(13,nanmean(kk_MB247_UAS_dm1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(14,nanmean(kk_MB247_UAS_dm1_after),0.4,'FaceAlpha',0.1);


max_len=65;

GH298_after(end:max_len)=nan;
GH298_before(end:max_len)=nan;
GH298_UAS_dm1_after(end:max_len)=nan;
GH298_UAS_dm1_before(end:max_len)=nan;
kk_GH298_UAS_dm1_after(end:max_len)=nan;
kk_GH298_UAS_dm1_before(end:max_len)=nan;
kk_MB247_UAS_dm1_after(end:max_len)=nan;
kk_MB247_UAS_dm1_before(end:max_len)=nan;
MB247_after(end:max_len)=nan;
MB247_before(end:max_len)=nan;
MB247_UAS_dm1_after(end:max_len)=nan;
MB247_UAS_dm1_before(end:max_len)=nan;
UAS_dm1_after(end:max_len)=nan;
UAS_dm1_before(end:max_len)=nan;



UnivarScatter([GH298_before,GH298_after,UAS_dm1_before,UAS_dm1_after,...
    GH298_UAS_dm1_before,GH298_UAS_dm1_after,kk_GH298_UAS_dm1_before,kk_GH298_UAS_dm1_after,...
    MB247_before,MB247_after,MB247_UAS_dm1_before,MB247_UAS_dm1_after,...
    kk_MB247_UAS_dm1_before,kk_MB247_UAS_dm1_after]...
    ,'Width',0.2,'Compression',15,'Label',{'GH298 before','GH298 after','UAS dm1 before','UAS dm1 after',...
    'GH298 UAS dm1 before','GH298 UAS dm1 after','kk GH298 UAS dm1 before','kk GH298 UAS dm1 after',...
    'MB247 before','MB247 after','MB247 UAS dm1 before','MB247 UAS dm1 after',...
    'kk MB247 UAS dm1 before','kk MB247 UAS dm1 after'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('Ethyl Butyrate - Habituation- Rescue');ylim([-110 110])

%% RNAi

clc;clear;load('Figure_5.mat');
figure;bar(1,nanmean(UAS_DM1_RNAi_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(UAS_DM1_RNAi_after),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(GH298_UAS_DM1_RNAi_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(GH298_UAS_DM1_RNAi_after),0.4,'FaceAlpha',0.1);
hold on;
bar(5,nanmean(MB247_UAS_DM1_RNAi_before),0.4,'FaceAlpha',0.1);
hold on;
bar(6,nanmean(MB247_UAS_DM1_RNAi_after),0.4,'FaceAlpha',0.1);
hold on;
bar(7,nanmean(kk_MB247_UAS_DM1_RNAi_before),0.4,'FaceAlpha',0.1);
hold on;
bar(8,nanmean(kk_MB247_UAS_DM1_RNAi_after),0.4,'FaceAlpha',0.1);
hold on;
bar(9,nanmean(kk_GH298_UAS_DM1_RNAi_before),0.4,'FaceAlpha',0.1);
hold on;
bar(10,nanmean(kk_GH298_UAS_DM1_RNAi_after),0.4,'FaceAlpha',0.1);


max_len=52;

UAS_DM1_RNAi_before(end:max_len)=nan;
UAS_DM1_RNAi_after(end:max_len)=nan;
GH298_UAS_DM1_RNAi_before(end:max_len)=nan;
GH298_UAS_DM1_RNAi_after(end:max_len)=nan;
MB247_UAS_DM1_RNAi_before(end:max_len)=nan;
MB247_UAS_DM1_RNAi_after(end:max_len)=nan;
kk_MB247_UAS_DM1_RNAi_before(end:max_len)=nan;
kk_MB247_UAS_DM1_RNAi_after(end:max_len)=nan;
kk_GH298_UAS_DM1_RNAi_before(end:max_len)=nan;
kk_GH298_UAS_DM1_RNAi_after(end:max_len)=nan;


UnivarScatter([UAS_DM1_RNAi_before,UAS_DM1_RNAi_after,GH298_UAS_DM1_RNAi_before,...
    GH298_UAS_DM1_RNAi_after,MB247_UAS_DM1_RNAi_before,MB247_UAS_DM1_RNAi_after...
    kk_MB247_UAS_DM1_RNAi_before,kk_MB247_UAS_DM1_RNAi_after,kk_GH298_UAS_DM1_RNAi_before,kk_GH298_UAS_DM1_RNAi_after]...
    ,'Width',0.2,'Compression',15,'Label',{'UAS-RNAi before','UAS-RNAi after',...
    'GH298 UAS-RNAi before','GH298 UAS-RNAi after','MB247 UAS-RNAi before','MB247 UAS-RNAi after'...
    'kk MB247 UAS-RNAi before','kk MB247 UAS-RNAi after',...
    'kk GH298 UAS-RNAi before','kk GH298 UAS-RNAi after'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('Ethyl Butyrate - Habituation- RNAi');ylim([-110 110])
