%% Figure S2
clc;clear;load('Figure_S2.mat');

%% A


figure;
scatter([1 2 3 4],[mean(wt_Gq_minus_80_10nM) mean(wt_Gq_minus_80_100nM) mean(wt_Gq_minus_80_1000nM)  mean(wt_Gq_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 2 3 4],[mean(wt_Gq_plus_40_10nM) mean(wt_Gq_plus_40_100nM) mean(wt_Gq_plus_40_1000nM)  mean(wt_Gq_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 2 3 4],[mean(wt_Gq_minus_80_10nM) mean(wt_Gq_minus_80_100nM) mean(wt_Gq_minus_80_1000nM) mean(wt_Gq_minus_80_10000nM)],...
    [std(wt_Gq_minus_80_10nM')/sqrt(size(wt_Gq_minus_80_10nM,2)) std(wt_Gq_minus_80_100nM')/sqrt(size(wt_Gq_minus_80_100nM,2)) std(wt_Gq_minus_80_1000nM')/sqrt(size(wt_Gq_minus_80_1000nM,2)) std(wt_Gq_minus_80_10000nM')/sqrt(size(wt_Gq_minus_80_10000nM,2)) ]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 2 3 4],[mean(wt_Gq_plus_40_10nM) mean(wt_Gq_plus_40_100nM) mean(wt_Gq_plus_40_1000nM) mean(wt_Gq_plus_40_10000nM)],...
    [std(wt_Gq_plus_40_10nM')/sqrt(size(wt_Gq_plus_40_10nM,2)) std(wt_Gq_plus_40_100nM')/sqrt(size(wt_Gq_plus_40_100nM,2)) std(wt_Gq_plus_40_1000nM')/sqrt(size(wt_Gq_plus_40_1000nM,2)) std(wt_Gq_plus_40_10000nM')/sqrt(size(wt_Gq_plus_40_10000nM,2)) ]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('in vitro mAChR-A wt');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized Cl- current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');



figure;
scatter([1 2 3 4],[mean(KK_Gq_minus_80_10nM) mean(KK_Gq_minus_80_100nM) mean(KK_Gq_minus_80_1000nM)  mean(KK_Gq_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 2 3 4],[mean(KK_Gq_plus_40_10nM) mean(KK_Gq_plus_40_100nM) mean(KK_Gq_plus_40_1000nM)  mean(KK_Gq_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 2 3 4],[mean(KK_Gq_minus_80_10nM) mean(KK_Gq_minus_80_100nM) mean(KK_Gq_minus_80_1000nM) mean(KK_Gq_minus_80_10000nM)],...
    [std(KK_Gq_minus_80_10nM')/sqrt(size(KK_Gq_minus_80_10nM,2)) std(KK_Gq_minus_80_100nM')/sqrt(size(KK_Gq_minus_80_100nM,2)) std(KK_Gq_minus_80_1000nM')/sqrt(size(KK_Gq_minus_80_1000nM,2)) std(KK_Gq_minus_80_10000nM')/sqrt(size(KK_Gq_minus_80_10000nM,2)) ]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 2 3 4],[mean(KK_Gq_plus_40_10nM) mean(KK_Gq_plus_40_100nM) mean(KK_Gq_plus_40_1000nM) mean(KK_Gq_plus_40_10000nM)],...
    [std(KK_Gq_plus_40_10nM')/sqrt(size(KK_Gq_plus_40_10nM,2)) std(KK_Gq_plus_40_100nM')/sqrt(size(KK_Gq_plus_40_100nM,2)) std(KK_Gq_plus_40_1000nM')/sqrt(size(KK_Gq_plus_40_1000nM,2)) std(KK_Gq_plus_40_10000nM')/sqrt(size(KK_Gq_plus_40_10000nM,2)) ]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('in vitro mAChR-A KK');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized Cl- current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');

%% B
 
figure;
bar(1,nanmean(wt_minus_80_high_concentration_abs_value),0.4,'FaceColor','k')
hold on
bar(2,nanmean(KK_minus_80_high_concentration_abs_value),0.4,'FaceColor','k')
hold on
bar(3,nanmean(wt_plus_40_high_concentration_abs_value),0.4,'FaceColor','r')
hold on
bar(4,nanmean(KK_plus_40_high_concentration_abs_value),0.4,'FaceColor','r')
hold on
ylim([0 1000]);
e1=errorbar([1 2 3 4],[mean(wt_minus_80_high_concentration_abs_value) mean(KK_minus_80_high_concentration_abs_value) mean(wt_plus_40_high_concentration_abs_value) mean(KK_plus_40_high_concentration_abs_value)],...
    [std(wt_minus_80_high_concentration_abs_value')/sqrt(size(wt_minus_80_high_concentration_abs_value,1)) std(KK_minus_80_high_concentration_abs_value')/sqrt(size(KK_minus_80_high_concentration_abs_value,1)) std(wt_plus_40_high_concentration_abs_value')/sqrt(size(wt_plus_40_high_concentration_abs_value,1)) std(KK_plus_40_high_concentration_abs_value')/sqrt(size(KK_plus_40_high_concentration_abs_value,1)) ]);
e1.LineStyle='none';
e1.Color = 'k';
max_size=max([length(wt_minus_80_high_concentration_abs_value),length(KK_minus_80_high_concentration_abs_value),length(wt_plus_40_high_concentration_abs_value),length(KK_plus_40_high_concentration_abs_value)]);
wt_minus_80_high_concentration_abs_value(end:max_size+1)=nan;
KK_minus_80_high_concentration_abs_value(end:max_size+1)=nan;
wt_plus_40_high_concentration_abs_value(end:max_size+1)=nan;
KK_plus_40_high_concentration_abs_value(end:max_size+1)=nan;
hold on;
UnivarScatter([wt_minus_80_high_concentration_abs_value,KK_minus_80_high_concentration_abs_value,...
    wt_plus_40_high_concentration_abs_value,KK_plus_40_high_concentration_abs_value]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','KK','wt','KK'},'Whiskers','none');
xticks([1 2 3 4])
xticklabels({'wt','KK','wt','KK'})
box off;ylabel('microA(abs)');
set(gca,'TickDir','out')


%% C

figure;
bar(1, nanmean(max_Ca_wt),0.4,'FaceAlpha',0.1,'FaceColor','k');
hold on;
bar(2, nanmean(max_Ca_KK),0.4,'FaceAlpha',0.1,'FaceColor','k');
hold on;
UnivarScatter([max_Ca_wt' ,max_Ca_KK'],'Width',0.2,'Compression',15,'Label',{'control','kk'},'Whiskers','none','MarkerEdgeColor','k','MarkerFaceColor','k');
xtickangle(45);
box off;ylabel({'Peak \DeltaF/F'});
set(gca,'TickDir','out');
ylim([0 1.2]);
xticks([1 2])
xticklabels({'wt','KK'})


