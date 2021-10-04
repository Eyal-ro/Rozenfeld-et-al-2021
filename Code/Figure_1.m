%% Figure 1
clc;clear;load('Figure_1.mat');
%% A
figure;
scatter([1 1.6990 2 2.6990 3 4],[mean(wt_minus_80_10nM) mean(wt_minus_80_50nM) mean(wt_minus_80_100nM) mean(wt_minus_80_500nM)  mean(wt_minus_80_1000nM) mean(wt_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 1.6990 2 2.6990 3 4],[mean(wt_plus_40_10nM) mean(wt_plus_40_50nM) mean(wt_plus_40_100nM) mean(wt_plus_40_500nM)  mean(wt_plus_40_1000nM) mean(wt_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 1.6990 2 2.6990 3 4],[mean(wt_minus_80_10nM) mean(wt_minus_80_50nM) mean(wt_minus_80_100nM) mean(wt_minus_80_500nM)  mean(wt_minus_80_1000nM) mean(wt_minus_80_10000nM)],...
    [std(wt_minus_80_10nM')/sqrt(size(wt_minus_80_10nM,2)) std(wt_minus_80_50nM')/sqrt(size(wt_minus_80_50nM,2)) std(wt_minus_80_100nM')/sqrt(size(wt_minus_80_100nM,2)) std(wt_minus_80_500nM')/sqrt(size(wt_minus_80_500nM,2)) std(wt_minus_80_1000nM')/sqrt(size(wt_minus_80_1000nM,2)) std(wt_minus_80_10000nM')/sqrt(size(wt_minus_80_10000nM,2))]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 1.6990 2 2.6990 3 4],[mean(wt_plus_40_10nM) mean(wt_plus_40_50nM) mean(wt_plus_40_100nM) mean(wt_plus_40_500nM)  mean(wt_plus_40_1000nM) mean(wt_plus_40_10000nM)],...
    [std(wt_plus_40_10nM')/sqrt(size(wt_plus_40_10nM,2)) std(wt_plus_40_50nM')/sqrt(size(wt_plus_40_50nM,2)) std(wt_plus_40_100nM')/sqrt(size(wt_plus_40_100nM,2)) std(wt_plus_40_500nM')/sqrt(size(wt_plus_40_500nM,2)) std(wt_plus_40_1000nM')/sqrt(size(wt_plus_40_1000nM,2)) std(wt_plus_40_10000nM')/sqrt(size(wt_plus_40_10000nM,2))]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('in vitro mAChR-A wt');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized GIRK current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');


%% B
figure;
scatter([1 1.6990 2 2.6990 3 4],[mean(KK_minus_80_10nM) mean(KK_minus_80_50nM) mean(KK_minus_80_100nM) mean(KK_minus_80_500nM)  mean(KK_minus_80_1000nM) mean(KK_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 1.6990 2 2.6990 3 4],[mean(KK_plus_40_10nM) mean(KK_plus_40_50nM) mean(KK_plus_40_100nM) mean(KK_plus_40_500nM)  mean(KK_plus_40_1000nM) mean(KK_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 1.6990 2 2.6990 3 4],[mean(KK_minus_80_10nM) mean(KK_minus_80_50nM) mean(KK_minus_80_100nM) mean(KK_minus_80_500nM)  mean(KK_minus_80_1000nM) mean(KK_minus_80_10000nM)],...
    [std(KK_minus_80_10nM')/sqrt(size(KK_minus_80_10nM,2)) std(KK_minus_80_50nM')/sqrt(size(KK_minus_80_50nM,2)) std(KK_minus_80_100nM')/sqrt(size(KK_minus_80_100nM,2)) std(KK_minus_80_500nM')/sqrt(size(KK_minus_80_500nM,2)) std(KK_minus_80_1000nM')/sqrt(size(KK_minus_80_1000nM,2)) std(KK_minus_80_10000nM')/sqrt(size(KK_minus_80_10000nM,2))]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 1.6990 2 2.6990 3 4],[mean(KK_plus_40_10nM) mean(KK_plus_40_50nM) mean(KK_plus_40_100nM) mean(KK_plus_40_500nM)  mean(KK_plus_40_1000nM) mean(KK_plus_40_10000nM)],...
    [std(KK_plus_40_10nM')/sqrt(size(KK_plus_40_10nM,2)) std(KK_plus_40_50nM')/sqrt(size(KK_plus_40_50nM,2)) std(KK_plus_40_100nM')/sqrt(size(KK_plus_40_100nM,2)) std(KK_plus_40_500nM')/sqrt(size(KK_plus_40_500nM,2)) std(KK_plus_40_1000nM')/sqrt(size(KK_plus_40_1000nM,2)) std(KK_plus_40_10000nM')/sqrt(size(KK_plus_40_10000nM,2))]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('in vitro mAChR-A KK');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized GIRK current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');

%% C
figure;
scatter([1 2 3 4],[mean(KK_minus_80_10nM_Atro) mean(KK_minus_80_100nM_Atro) mean(KK_minus_80_1000nM_Atro)  mean(KK_minus_80_10000nM_Atro)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 2 3 4],[mean(KK_plus_40_10nM_Atro) mean(KK_plus_40_100nM_Atro) mean(KK_plus_40_1000nM_Atro)  mean(KK_plus_40_10000nM_Atro)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 2 3 4],[mean(KK_minus_80_10nM_Atro) mean(KK_minus_80_100nM_Atro) mean(KK_minus_80_1000nM_Atro) mean(KK_minus_80_10000nM_Atro)],...
    [std(KK_minus_80_10nM_Atro')/sqrt(size(KK_minus_80_10nM_Atro,2)) std(KK_minus_80_100nM_Atro')/sqrt(size(KK_minus_80_100nM_Atro,2)) std(KK_minus_80_1000nM_Atro')/sqrt(size(KK_minus_80_1000nM_Atro,2)) std(KK_minus_80_10000nM_Atro')/sqrt(size(KK_minus_80_10000nM_Atro,2)) ]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 2 3 4],[mean(KK_plus_40_10nM_Atro) mean(KK_plus_40_100nM_Atro) mean(KK_plus_40_1000nM_Atro) mean(KK_plus_40_10000nM_Atro)],...
    [std(KK_plus_40_10nM_Atro')/sqrt(size(KK_plus_40_10nM_Atro,2)) std(KK_plus_40_100nM_Atro')/sqrt(size(KK_plus_40_100nM_Atro,2)) std(KK_plus_40_1000nM_Atro')/sqrt(size(KK_plus_40_1000nM_Atro,2)) std(KK_plus_40_10000nM_Atro')/sqrt(size(KK_plus_40_10000nM_Atro,2)) ]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('in vitro mAChR-A KK + atropine');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized GIRK current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');


%% D
figure;
bar(1,nanmean(wt_minus_80_high_concentration_abs_value/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(2,nanmean(KK_minus_80_high_concentration_abs_value/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(3,nanmean(KK_minus_80_high_concentration_abs_value_Atro/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on


UnivarScatter([wt_minus_80_high_concentration_abs_value/1000 KK_minus_80_high_concentration_abs_value/1000 KK_minus_80_high_concentration_abs_value_Atro/1000]...
    ,'Width',0.2,'Compression',15,'Label',{'WT','kk CRISPR','kk CRISPR-Atro'},'Whiskers','none','MarkerEdgeColor','k','MarkerFaceColor','k')
xtickangle(45)
box off;ylim([0 10]);
set(gca,'TickDir','out');title('-80mV');ylabel('microA(abs)');


figure;
bar(1,nanmean(wt_plus_40_high_concentration_abs_value/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(2,nanmean(KK_plus_40_high_concentration_abs_value/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(3,nanmean(KK_plus_40_high_concentration_abs_value_Atro/1000),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on


UnivarScatter([wt_plus_40_high_concentration_abs_value/1000 KK_plus_40_high_concentration_abs_value/1000 KK_plus_40_high_concentration_abs_value_Atro/1000]...
    ,'Width',0.2,'Compression',15,'Label',{'WT','kk CRISPR','kk CRISPR-Atro'},'Whiskers','none','MarkerEdgeColor','r','MarkerFaceColor','r')
xtickangle(45)
box off;ylim([0 5]);
set(gca,'TickDir','out');title('+40mV KK');ylabel('microA(abs)');


%% E

figure;
scatter([-2 -1 0 1 2],[mean(all_flies_minus80_0_point_01micro_norm) mean(all_flies_minus80_0_point_1micro_norm) mean(all_flies_minus80_1micro_norm) mean(all_flies_minus80_10micro_norm)  mean(all_flies_minus80_100micro_norm)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([-2 -1 0 1 2],[mean(all_flies_0_0_point_01micro_norm) mean(all_flies_0_0_point_1micro_norm) mean(all_flies_0_1micro_norm) mean(all_flies_0_10micro_norm)  mean(all_flies_0_100micro_norm)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([-2 -1 0 1 2],[mean(all_flies_minus80_0_point_01micro_norm) mean(all_flies_minus80_0_point_1micro_norm) mean(all_flies_minus80_1micro_norm) mean(all_flies_minus80_10micro_norm)  mean(all_flies_minus80_100micro_norm)],...
    [std(all_flies_minus80_0_point_01micro_norm')/sqrt(size(all_flies_minus80_0_point_01micro_norm,2)) std(all_flies_minus80_0_point_1micro_norm')/sqrt(size(all_flies_minus80_0_point_1micro_norm,2)) std(all_flies_minus80_1micro_norm')/sqrt(size(all_flies_minus80_1micro_norm,2)) std(all_flies_minus80_10micro_norm')/sqrt(size(all_flies_minus80_10micro_norm,2)) std(all_flies_minus80_100micro_norm')/sqrt(size(all_flies_minus80_100micro_norm,2))]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([-2 -1 0 1 2],[mean(all_flies_0_0_point_01micro_norm) mean(all_flies_0_0_point_1micro_norm) mean(all_flies_0_1micro_norm) mean(all_flies_0_10micro_norm)  mean(all_flies_0_100micro_norm)],...
    [std(all_flies_0_0_point_01micro_norm')/sqrt(size(all_flies_0_0_point_01micro_norm,2)) std(all_flies_0_0_point_1micro_norm')/sqrt(size(all_flies_0_0_point_1micro_norm,2)) std(all_flies_0_1micro_norm')/sqrt(size(all_flies_0_1micro_norm,2)) std(all_flies_0_10micro_norm')/sqrt(size(all_flies_0_10micro_norm,2)) std(all_flies_0_100micro_norm')/sqrt(size(all_flies_0_100micro_norm,2))]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([-2.5 2.5]);  
xticks([-2 -1 0 1 2])
xticklabels({'10^1','10^2','10^3','10^4','10^5'})
title('in vivo mAChR-A wt');
box off
set(gca,'TickDir','out')
xlabel(['[Muscarine] (nM)']);ylabel(['Normalized current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','0mV');

%% F

figure;
scatter([-2 -1 0 1 2],[mean(all_flies_KK_minus80_0_point_01micro_norm) mean(all_flies_KK_minus80_0_point_1micro_norm) mean(all_flies_KK_minus80_1micro_norm) mean(all_flies_KK_minus80_10micro_norm)  mean(all_flies_KK_minus80_100micro_norm)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([-2 -1 0 1 2],[mean(all_flies_KK_0_0_point_01micro_norm) mean(all_flies_KK_0_0_point_1micro_norm) mean(all_flies_KK_0_1micro_norm) mean(all_flies_KK_0_10micro_norm)  mean(all_flies_KK_0_100micro_norm)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([-2 -1 0 1 2],[mean(all_flies_KK_minus80_0_point_01micro_norm) mean(all_flies_KK_minus80_0_point_1micro_norm) mean(all_flies_KK_minus80_1micro_norm) mean(all_flies_KK_minus80_10micro_norm)  mean(all_flies_KK_minus80_100micro_norm)],...
    [std(all_flies_KK_minus80_0_point_01micro_norm')/sqrt(size(all_flies_KK_minus80_0_point_01micro_norm,2)) std(all_flies_KK_minus80_0_point_1micro_norm')/sqrt(size(all_flies_KK_minus80_0_point_1micro_norm,2)) std(all_flies_KK_minus80_1micro_norm')/sqrt(size(all_flies_KK_minus80_1micro_norm,2)) std(all_flies_KK_minus80_10micro_norm')/sqrt(size(all_flies_KK_minus80_10micro_norm,2)) std(all_flies_KK_minus80_100micro_norm')/sqrt(size(all_flies_KK_minus80_100micro_norm,2))]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([-2 -1 0 1 2],[mean(all_flies_KK_0_0_point_01micro_norm) mean(all_flies_KK_0_0_point_1micro_norm) mean(all_flies_KK_0_1micro_norm) mean(all_flies_KK_0_10micro_norm)  mean(all_flies_KK_0_100micro_norm)],...
    [std(all_flies_KK_0_0_point_01micro_norm')/sqrt(size(all_flies_KK_0_0_point_01micro_norm,2)) std(all_flies_KK_0_0_point_1micro_norm')/sqrt(size(all_flies_KK_0_0_point_1micro_norm,2)) std(all_flies_KK_0_1micro_norm')/sqrt(size(all_flies_KK_0_1micro_norm,2)) std(all_flies_KK_0_10micro_norm')/sqrt(size(all_flies_KK_0_10micro_norm,2)) std(all_flies_KK_0_100micro_norm')/sqrt(size(all_flies_KK_0_100micro_norm,2))]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([-2.5 2.5]);  
xticks([-2 -1 0 1 2])
xticklabels({'10^1','10^2','10^3','10^4','10^5'})
title('in vivo mAChR-A-KK');
box off
set(gca,'TickDir','out')
xlabel(['[Muscarine] (nM)']);ylabel(['Normalized current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','0mV');

%% G

figure;
scatter([-1 1 2],[mean(all_flies_KK_Atro_minus80_0_point_1micro_norm) mean(all_flies_KK_Atro_minus80_10micro_norm)  mean(all_flies_KK_Atro_minus80_100micro_norm)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([-1 1 2],[mean(all_flies_KK_Atro_0_0_point_1micro_norm) mean(all_flies_KK_Atro_0_10micro_norm)  mean(all_flies_KK_Atro_0_100micro_norm)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([-1 1 2],[mean(all_flies_KK_Atro_minus80_0_point_1micro_norm) mean(all_flies_KK_Atro_minus80_10micro_norm)  mean(all_flies_KK_Atro_minus80_100micro_norm)],...
    [std(all_flies_KK_Atro_minus80_0_point_1micro_norm')/sqrt(size(all_flies_KK_Atro_minus80_0_point_1micro_norm,2)) std(all_flies_KK_Atro_minus80_10micro_norm')/sqrt(size(all_flies_KK_Atro_minus80_10micro_norm,2)) std(all_flies_KK_Atro_minus80_100micro_norm')/sqrt(size(all_flies_KK_Atro_minus80_100micro_norm,2))]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([-1 1 2],[mean(all_flies_KK_Atro_0_0_point_1micro_norm) mean(all_flies_KK_Atro_0_10micro_norm)  mean(all_flies_KK_Atro_0_100micro_norm)],...
    [std(all_flies_KK_Atro_0_0_point_1micro_norm')/sqrt(size(all_flies_KK_Atro_0_0_point_1micro_norm,2)) std(all_flies_KK_Atro_0_10micro_norm')/sqrt(size(all_flies_KK_Atro_0_10micro_norm,2)) std(all_flies_KK_Atro_0_100micro_norm')/sqrt(size(all_flies_KK_Atro_0_100micro_norm,2))]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([-2.5 2.5]);  
xticks([-1 1 2])
xticklabels({'10^2','10^4','10^5'})
title('in vivo mAChR-A-KK + atropine');
box off
set(gca,'TickDir','out')
xlabel(['[Muscarine] (nM)']);ylabel(['Normalized current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','0mV');

%% H


figure;
bar(1,nanmean(abs(all_flies_0_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(2,nanmean(abs(all_flies_KK_KK_0_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(3,nanmean(abs(all_flies_KK_KK_atro_0_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on


UnivarScatter([abs(all_flies_0_100micro)' abs(all_flies_KK_KK_0_100micro)' abs(all_flies_KK_KK_atro_0_100micro)']...
    ,'Width',0.2,'Compression',15,'Label',{'WT','kk CRISPR','kk CRISPR-Atro'},'Whiskers','none','MarkerEdgeColor','r','MarkerFaceColor','r')
xtickangle(45)
box off;ylim([0 150]);
set(gca,'TickDir','out');title('100 microM - 0mV');ylabel('pA(abs)');




figure;
bar(1,nanmean(abs(all_flies_minus80_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(2,nanmean(abs(all_flies_KK_KK_minus80_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on
bar(3,nanmean(abs(all_flies_KK_KK_atro_minus80_100micro)),0.4,'FaceAlpha',0.1,'FaceColor','none')
hold on

UnivarScatter([abs(all_flies_minus80_100micro)' abs(all_flies_KK_KK_minus80_100micro)' abs(all_flies_KK_KK_atro_minus80_100micro)']...
    ,'Width',0.2,'Compression',15,'Label',{'WT','kk CRISPR','kk CRISPR-Atro'},'Whiskers','none','MarkerEdgeColor','k','MarkerFaceColor','k')
xtickangle(45)
box off;ylim([0 150]);
set(gca,'TickDir','out');title('100 microM - -80mV');ylabel('pA(abs)');




