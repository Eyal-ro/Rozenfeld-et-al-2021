%% Figure 4
clc;clear;load('Figure_4.mat');

%% B

figure;
shadedErrorBar([1:35],nanmean(Before_GH298_all_flies_EB(:,1:35),1),[nanstd(Before_GH298_all_flies_EB(:,1:35))/sqrt(size(Before_GH298_all_flies_EB(:,1:35),1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:35],nanmean(After_GH298_all_flies_EB(:,1:35),1),[nanstd(After_GH298_all_flies_EB(:,1:35))/sqrt(size(After_GH298_all_flies_EB(:,1:35),1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate EB-PSTH');ylabel('Spikes/sec');
set(gca,'XTick',0:10:35);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([-5 20]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Before','After'); title('wt');



figure;
shadedErrorBar([1:35],nanmean(Before_GH298_KK_all_flies_EB(:,1:35),1),[nanstd(Before_GH298_KK_all_flies_EB(:,1:35))/sqrt(size(Before_GH298_KK_all_flies_EB(:,1:35),1)/10)],'lineprops','k');
xlabel('Time (sec)');
hold on
shadedErrorBar([1:35],nanmean(After_GH298_KK_all_flies_EB(:,1:35),1),[nanstd(After_GH298_KK_all_flies_EB(:,1:35))/sqrt(size(After_GH298_KK_all_flies_EB(:,1:35),1)/10)],'lineprops','r');
box off
set(gca,'TickDir','out');title('Firing rate-kk- EB-PSTH');ylabel('Spikes/sec');
set(gca,'XTick',0:10:80);set(gca,'XTickLabel',{'-0.5','0','0.5','1','1.5','2','2.5','3','3.5'})
h = zeros(2, 1);ylim([-5 20]);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'Before','After'); title('kk');

%% C 


figure;
plot([0.5 0.6],[Before_GH298_all_flies_EB_down+rand([1,length(Before_GH298_all_flies_EB_down)])*10  ; After_GH298_all_flies_EB_down+rand(1,length(After_GH298_all_flies_EB_down))*10],'k','Marker','o','MarkerFaceColor','k','MarkerSize',5);
xlim([0.25 1.25]);
hold on
plot([0.5 0.6],[mean(Before_GH298_all_flies_EB_down);mean(After_GH298_all_flies_EB_down)],'r','Marker','o','MarkerFaceColor','r');
hold on
plot([1 1.1],[Before_GH298_all_flies_EB_same+rand([1,length(Before_GH298_all_flies_EB_same)])*10  ; After_GH298_all_flies_EB_same+rand(1,length(After_GH298_all_flies_EB_same))*10],'k','Marker','o','MarkerFaceColor','k','MarkerSize',5);
hold on
plot([1 1.1],[mean(Before_GH298_all_flies_EB_same);mean(After_GH298_all_flies_EB_same)],'r','Marker','o','MarkerFaceColor','r');
set(gca,'XTick',[0.5,0.6,1,1.1]);
set(gca,'XTickLabel',{'Before','After','Before','After'});
box off
ylim([-10 180]);
set(gca,'TickDir','out');title('wt');ylabel('Firing rate (Hz)');




figure;
plot([0.5 0.6],[Before_GH298_KK_all_flies_EB_down+rand([1,length(Before_GH298_KK_all_flies_EB_down)])*10  ; After_GH298_KK_all_flies_EB_down+rand(1,length(After_GH298_KK_all_flies_EB_down))*10],'k','Marker','o','MarkerFaceColor','k','MarkerSize',5);
hold on
plot([0.5 0.6],[mean(Before_GH298_KK_all_flies_EB_down);mean(After_GH298_KK_all_flies_EB_down)],'r','Marker','o','MarkerFaceColor','r');
hold on
plot([1 1.1],[Before_GH298_KK_all_flies_EB_same+rand([1,length(Before_GH298_KK_all_flies_EB_same)])*10  ; After_GH298_KK_all_flies_EB_same+rand(1,length(After_GH298_KK_all_flies_EB_same))*10],'k','Marker','o','MarkerFaceColor','k','MarkerSize',5);
hold on
plot([1 1.1],[mean(Before_GH298_KK_all_flies_EB_same);mean(After_GH298_KK_all_flies_EB_same)],'r','Marker','o','MarkerFaceColor','r');
hold on
plot([1.5 1.6],[Before_GH298_KK_all_flies_EB_up+rand([1,length(Before_GH298_KK_all_flies_EB_up)])*10  ; After_GH298_KK_all_flies_EB_up+rand(1,length(After_GH298_KK_all_flies_EB_up))*10],'k','Marker','o','MarkerFaceColor','k','MarkerSize',5);
hold on
plot([1.5 1.6],[mean(Before_GH298_KK_all_flies_EB_up);mean(After_GH298_KK_all_flies_EB_up)],'r','Marker','o','MarkerFaceColor','r');
xlim([0.25 2]);
set(gca,'XTick',[0.5,0.6,1,1.1,1.5,1.6]);
set(gca,'XTickLabel',{'Before','After','Before','After','Before','After'});
hold on
box off
ylim([-10 180]);
set(gca,'TickDir','out');title('kk');ylabel('Firing rate (Hz)');

%% D


figure;bar(1,nanmean(w1118_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(w1118_after30min),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(kk_2_1_before),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(kk_2_1_after30min),0.4,'FaceAlpha',0.1);

UnivarScatter([w1118_before,w1118_after30min,kk_2_1_before,kk_2_1_after30min]...
    ,'Width',0.2,'Compression',15,'Label',{'wt before','wt after 30min','KK before','KK after 30min'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('Ethyl Butyrate - Habituation');ylim([-110 110])






