%% Figure S4
clc;clear;load('Figure_S4.mat');

%% A

figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_no_HFS)]*100,[std(pre_all_flies_no_HFS)/ sqrt(size(pre_all_flies_no_HFS,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_no_HFS)]*100,[std(post_all_flies_no_HFS)/ sqrt(size(post_all_flies_no_HFS,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});


xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('wt-no HFS');

figure;
bar(1,mean(mean(pre_all_flies_no_HFS,2)),'r');hold on
bar(2,mean(mean(post_all_flies_no_HFS,2)),'r');hold on
plot([1 2],[mean(pre_all_flies_no_HFS,2), mean(post_all_flies_no_HFS,2)],'color',[0.5 0.5 0.5]);

box off;ylim([0 7]);
set(gca,'TickDir','out');title('wt-no HFS');ylabel('Mean normalized EPSC');

%% B

figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_kk_50Hz)]*100,[std(pre_all_flies_kk_50Hz)/ sqrt(size(pre_all_flies_kk_50Hz,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_kk_50Hz)]*100,[std(post_all_flies_kk_50Hz)/ sqrt(size(post_all_flies_kk_50Hz,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});


xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('wt-no HFS');

figure;
bar(1,mean(mean(pre_all_flies_kk_50Hz,2)),'b');hold on
bar(2,mean(mean(post_all_flies_kk_50Hz,2)),'b');hold on
plot([1 2],[mean(pre_all_flies_kk_50Hz,2), mean(post_all_flies_kk_50Hz,2)],'color',[0.5 0.5 0.5]);

box off;ylim([0 7]);
set(gca,'TickDir','out');title('KK-50Hz');ylabel('Mean normalized EPSC');
