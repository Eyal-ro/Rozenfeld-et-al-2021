%% Figure S3
clc;clear;load('Figure_S3.mat');

%% B

figure;
bar(1,nanmean(wt),0.4,'FaceAlpha',0.3,'FaceColor','k')
hold on
bar(2,nanmean(KK),0.4,'FaceAlpha',0.1,'FaceColor','k')
hold on
bar(3,nanmean(wt_bar),0.4,'FaceAlpha',0.3,'FaceColor','k')
hold on
bar(4,nanmean(KK_bar),0.4,'FaceAlpha',0.1,'FaceColor','k')
hold on
ylim([0 100]);
e1=errorbar([1 2 3 4],[mean(wt) mean(KK) mean(wt_bar) mean(KK_bar)],...
    [std(wt')/sqrt(size(wt,1)) std(KK')/sqrt(size(KK,1)) std(wt_bar')/sqrt(size(wt_bar,1)) std(KK_bar')/sqrt(size(KK_bar,1)) ]);
e1.LineStyle='none';
e1.Color = 'k';

xticks([1 2 3 4]);xtickangle(45)
xticklabels({'mAChR-A','mAChR-A-KK','mAChR-A b-arrestin','mAChR-A-KK b-arrestin'})
box off;ylabel('% desensitization');
set(gca,'TickDir','out')
