%% Figure S5
clc;clear;load('Figure_S5.mat');

figure;
bar(1,nanmean(GH298_all_flies),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(GH298_prepulse_at_40),0.4,'FaceAlpha',0.1);
UnivarScatter([GH298_all_flies', GH298_prepulse_at_40']...
    ,'Width',0.2,'Compression',15,'Label',{'No prepulse','Prepulse'},'Whiskers','none');
xtickangle(45);
box off;
set(gca,'TickDir','out');
title('wt');ylabel('Potential (mV))');


figure;
bar(1,nanmean(KK_all_flies),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(KK_prepulse_at_40),0.4,'FaceAlpha',0.1);
UnivarScatter([KK_all_flies', KK_prepulse_at_40']...
    ,'Width',0.2,'Compression',15,'Label',{'No prepulse','Prepulse'},'Whiskers','none');
xtickangle(45);
box off;
set(gca,'TickDir','out');
title('KK');ylabel('Potential (mV))');
