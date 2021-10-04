%% Figure 2
clc;clear;load('Figure_2.mat');
%% C

figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_wt_minus60)]*100,[std(pre_all_flies_wt_minus60)/ sqrt(size(pre_all_flies_wt_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_wt_minus60)]*100,[std(post_all_flies_wt_minus60)/ sqrt(size(post_all_flies_wt_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_wt_minus40)]*100,[std(pre_all_flies_wt_minus40)/ sqrt(size(pre_all_flies_wt_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_wt_minus40)]*100,[std(post_all_flies_wt_minus40)/ sqrt(size(post_all_flies_wt_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_wt_minus80)]*100,[std(pre_all_flies_wt_minus80)/ sqrt(size(pre_all_flies_wt_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_wt_minus80)]*100,[std(post_all_flies_wt_minus80)/ sqrt(size(post_all_flies_wt_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});



xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('wt');

figure;
bar(1,mean(mean(pre_all_flies_wt_minus40,2)),'r');hold on
bar(2,mean(mean(post_all_flies_wt_minus40,2)),'r');hold on
plot([1 2],[mean(pre_all_flies_wt_minus40,2), mean(post_all_flies_wt_minus40,2)],'color',[0.5 0.5 0.5]);
hold on;bar(3,0);hold on
bar(4,mean(mean(pre_all_flies_wt_minus60,2)),'b');hold on
bar(5,mean(mean(post_all_flies_wt_minus60,2)),'b');hold on
plot([4 5],[mean(pre_all_flies_wt_minus60,2), mean(post_all_flies_wt_minus60,2)],'color',[0.5 0.5 0.5]);
hold on;bar(6,0);hold on
bar(7,mean(mean(pre_all_flies_wt_minus80,2)),'k');hold on
bar(8,mean(mean(post_all_flies_wt_minus80,2)),'k');hold on
plot([7 8],[mean(pre_all_flies_wt_minus80,2), mean(post_all_flies_wt_minus80,2)],'color',[0.5 0.5 0.5]);


box off;ylim([0 7]);
set(gca,'TickDir','out');title('wt');ylabel('Mean normalized EPSC');

%% D

figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_RNAi_minus60)]*100,[std(pre_all_flies_RNAi_minus60)/ sqrt(size(pre_all_flies_RNAi_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_RNAi_minus60)]*100,[std(post_all_flies_RNAi_minus60)/ sqrt(size(post_all_flies_RNAi_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_RNAi_minus40)]*100,[std(pre_all_flies_RNAi_minus40)/ sqrt(size(pre_all_flies_RNAi_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_RNAi_minus40)]*100,[std(post_all_flies_RNAi_minus40)/ sqrt(size(post_all_flies_RNAi_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_RNAi_minus80)]*100,[std(pre_all_flies_RNAi_minus80)/ sqrt(size(pre_all_flies_RNAi_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_RNAi_minus80)]*100,[std(post_all_flies_RNAi_minus80)/ sqrt(size(post_all_flies_RNAi_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});



xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('RNAi');

figure;
bar(1,mean(mean(pre_all_flies_RNAi_minus40,2)),'r');hold on
bar(2,mean(mean(post_all_flies_RNAi_minus40,2)),'r');hold on
plot([1 2],[mean(pre_all_flies_RNAi_minus40,2), mean(post_all_flies_RNAi_minus40,2)],'color',[0.5 0.5 0.5]);
hold on;bar(3,0);hold on
bar(4,mean(mean(pre_all_flies_RNAi_minus60,2)),'b');hold on
bar(5,mean(mean(post_all_flies_RNAi_minus60,2)),'b');hold on
plot([4 5],[mean(pre_all_flies_RNAi_minus60,2), mean(post_all_flies_RNAi_minus60,2)],'color',[0.5 0.5 0.5]);
hold on;bar(6,0);hold on
bar(7,mean(mean(pre_all_flies_RNAi_minus80,2)),'k');hold on
bar(8,mean(mean(post_all_flies_RNAi_minus80,2)),'k');hold on
plot([7 8],[mean(pre_all_flies_RNAi_minus80,2), mean(post_all_flies_RNAi_minus80,2)],'color',[0.5 0.5 0.5]);


box off;ylim([0 7]);
set(gca,'TickDir','out');title('RNAi');ylabel('Mean normalized EPSC');

%% E


figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_KK_minus60)]*100,[std(pre_all_flies_KK_minus60)/ sqrt(size(pre_all_flies_KK_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_KK_minus60)]*100,[std(post_all_flies_KK_minus60)/ sqrt(size(post_all_flies_KK_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_KK_minus40)]*100,[std(pre_all_flies_KK_minus40)/ sqrt(size(pre_all_flies_KK_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_KK_minus40)]*100,[std(post_all_flies_KK_minus40)/ sqrt(size(post_all_flies_KK_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_KK_minus80)]*100,[std(pre_all_flies_KK_minus80)/ sqrt(size(pre_all_flies_KK_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_KK_minus80)]*100,[std(post_all_flies_KK_minus80)/ sqrt(size(post_all_flies_KK_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});



xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('KK');

figure;
bar(1,mean(mean(pre_all_flies_KK_minus40,2)),'r');hold on
bar(2,mean(mean(post_all_flies_KK_minus40,2)),'r');hold on
plot([1 2],[mean(pre_all_flies_KK_minus40,2), mean(post_all_flies_KK_minus40,2)],'color',[0.5 0.5 0.5]);
hold on;bar(3,0);hold on
bar(4,mean(mean(pre_all_flies_KK_minus60,2)),'b');hold on
bar(5,mean(mean(post_all_flies_KK_minus60,2)),'b');hold on
plot([4 5],[mean(pre_all_flies_KK_minus60,2), mean(post_all_flies_KK_minus60,2)],'color',[0.5 0.5 0.5]);
hold on;bar(6,0);hold on
bar(7,mean(mean(pre_all_flies_KK_minus80,2)),'k');hold on
bar(8,mean(mean(post_all_flies_KK_minus80,2)),'k');hold on
plot([7 8],[mean(pre_all_flies_KK_minus80,2), mean(post_all_flies_KK_minus80,2)],'color',[0.5 0.5 0.5]);


box off;ylim([0 7]);
set(gca,'TickDir','out');title('KK');ylabel('Mean normalized EPSC');
%% F


figure;
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_Atro_minus60)]*100,[std(pre_all_flies_Atro_minus60)/ sqrt(size(pre_all_flies_Atro_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_Atro_minus60)]*100,[std(post_all_flies_Atro_minus60)/ sqrt(size(post_all_flies_Atro_minus60,1))]*100,'lineprops',{'b-o','markerfacecolor','b'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_Atro_minus40)]*100,[std(pre_all_flies_Atro_minus40)/ sqrt(size(pre_all_flies_Atro_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_Atro_minus40)]*100,[std(post_all_flies_Atro_minus40)/ sqrt(size(post_all_flies_Atro_minus40,1))]*100,'lineprops',{'r-o','markerfacecolor','r'});
hold on
shadedErrorBar([1 2 3 4 5],[mean(pre_all_flies_Atro_minus80)]*100,[std(pre_all_flies_Atro_minus80)/ sqrt(size(pre_all_flies_Atro_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});
hold on
shadedErrorBar([6.5:1:16],[mean(post_all_flies_Atro_minus80)]*100,[std(post_all_flies_Atro_minus80)/ sqrt(size(post_all_flies_Atro_minus80,1))]*100,'lineprops',{'k-o','markerfacecolor','k'});



xlim([0 17]);ylim([0 600])
ylabel({'Normalized EPSC'});
xlabel({'# pulse'});
box off
set(gca,'TickDir','out')
title('Atro');

figure;
bar(1,mean(mean(pre_all_flies_Atro_minus40,2)),'r');hold on
bar(2,mean(mean(post_all_flies_Atro_minus40,2)),'r');hold on
plot([1 2],[mean(pre_all_flies_Atro_minus40,2), mean(post_all_flies_Atro_minus40,2)],'color',[0.5 0.5 0.5]);
hold on;bar(3,0);hold on
bar(4,mean(mean(pre_all_flies_Atro_minus60,2)),'b');hold on
bar(5,mean(mean(post_all_flies_Atro_minus60,2)),'b');hold on
plot([4 5],[mean(pre_all_flies_Atro_minus60,2), mean(post_all_flies_Atro_minus60,2)],'color',[0.5 0.5 0.5]);
hold on;bar(6,0);hold on
bar(7,mean(mean(pre_all_flies_Atro_minus80,2)),'k');hold on
bar(8,mean(mean(post_all_flies_Atro_minus80,2)),'k');hold on
plot([7 8],[mean(pre_all_flies_Atro_minus80,2), mean(post_all_flies_Atro_minus80,2)],'color',[0.5 0.5 0.5]);


box off;ylim([0 7]);
set(gca,'TickDir','out');title('Atro');ylabel('Mean normalized EPSC');
