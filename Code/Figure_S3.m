%% Figure S3
clc;clear;load('Figure_S3.mat');

%% B

figure;
shadedErrorBar([1:6000],nanmean(dm1_wt_with_grk(1:6000,:),2),[nanstd(dm1_wt_with_grk(1:6000,:)')/sqrt(size(dm1_wt_with_grk,2))],'lineprops','k');
hold on
shadedErrorBar([1:6000],nanmean(dm1_kk_with_grk(1:6000,:),2),[nanstd(dm1_kk_with_grk(1:6000,:)')/sqrt(size(dm1_kk_with_grk,2))],'lineprops','r');
box off
set(gca,'TickDir','out');title('With bARR and GRK');
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, 'wt','kk');

%% C

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

wt(8:12)=nan;KK(7:12)=nan;KK_bar(9:12)=nan;
hold on;
UnivarScatter([wt,KK,wt_bar,KK_bar],'Width',0.2,'Compression',15,'Label',{'mAChR-A','mAChR-A-KK','mAChR-A b-arrestin','mAChR-A-KK b-arrestin'},'Whiskers','none');


xticks([1 2 3 4]);xtickangle(45)
xticklabels({'mAChR-A','mAChR-A-KK','mAChR-A b-arrestin','mAChR-A-KK b-arrestin'})
box off;ylabel('% desensitization');
set(gca,'TickDir','out')
