%% Figure S1
clc;clear;load('Figure_S1.mat');

%% B
figure;
scatter([1 2 3 4],[mean(triple_minus_80_10nM) mean(triple_minus_80_100nM) mean(triple_minus_80_1000nM)  mean(triple_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 2 3 4],[mean(triple_plus_40_10nM) mean(triple_plus_40_100nM) mean(triple_plus_40_1000nM)  mean(triple_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 2 3 4],[mean(triple_minus_80_10nM) mean(triple_minus_80_100nM) mean(triple_minus_80_1000nM) mean(triple_minus_80_10000nM)],...
    [std(triple_minus_80_10nM')/sqrt(size(triple_minus_80_10nM,2)) std(triple_minus_80_100nM')/sqrt(size(triple_minus_80_100nM,2)) std(triple_minus_80_1000nM')/sqrt(size(triple_minus_80_1000nM,2)) std(triple_minus_80_10000nM')/sqrt(size(triple_minus_80_10000nM,2)) ]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 2 3 4],[mean(triple_plus_40_10nM) mean(triple_plus_40_100nM) mean(triple_plus_40_1000nM) mean(triple_plus_40_10000nM)],...
    [std(triple_plus_40_10nM')/sqrt(size(triple_plus_40_10nM,2)) std(triple_plus_40_100nM')/sqrt(size(triple_plus_40_100nM,2)) std(triple_plus_40_1000nM')/sqrt(size(triple_plus_40_1000nM,2)) std(triple_plus_40_10000nM')/sqrt(size(triple_plus_40_10000nM,2)) ]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('mAChR-A Triple Y to A');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized GIRK current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');




figure;
scatter([1 2 3 4],[mean(Y185_minus_80_10nM) mean(Y185_minus_80_100nM) mean(Y185_minus_80_1000nM)  mean(Y185_minus_80_10000nM)],'MarkerEdgeColor','k','MarkerFaceColor','k')
hold on;
scatter([1 2 3 4],[mean(Y185_plus_40_10nM) mean(Y185_plus_40_100nM) mean(Y185_plus_40_1000nM)  mean(Y185_plus_40_10000nM)],'MarkerEdgeColor','r','MarkerFaceColor','r')
hold on;
e1=errorbar([1 2 3 4],[mean(Y185_minus_80_10nM) mean(Y185_minus_80_100nM) mean(Y185_minus_80_1000nM) mean(Y185_minus_80_10000nM)],...
    [std(Y185_minus_80_10nM')/sqrt(size(Y185_minus_80_10nM,2)) std(Y185_minus_80_100nM')/sqrt(size(Y185_minus_80_100nM,2)) std(Y185_minus_80_1000nM')/sqrt(size(Y185_minus_80_1000nM,2)) std(Y185_minus_80_10000nM')/sqrt(size(Y185_minus_80_10000nM,2)) ]);
e1.LineStyle='none';
e1.Color = 'k';
hold on;
e2=errorbar([1 2 3 4],[mean(Y185_plus_40_10nM) mean(Y185_plus_40_100nM) mean(Y185_plus_40_1000nM) mean(Y185_plus_40_10000nM)],...
    [std(Y185_plus_40_10nM')/sqrt(size(Y185_plus_40_10nM,2)) std(Y185_plus_40_100nM')/sqrt(size(Y185_plus_40_100nM,2)) std(Y185_plus_40_1000nM')/sqrt(size(Y185_plus_40_1000nM,2)) std(Y185_plus_40_10000nM')/sqrt(size(Y185_plus_40_10000nM,2)) ]);
e2.LineStyle='none';
e2.Color = 'k';
xlim([0 5]); ylim([0 1]);
xticks([1 2 3 4])
xticklabels({'10^1','10^2','10^3','10^4'})
title('mAChR-A Y185');
box off
set(gca,'TickDir','out')
xlabel(['[ACh] (nM)']);ylabel(['Normalized GIRK current']);
h = zeros(2, 1);
h(1) = plot(NaN,NaN,'k','LineWidth',2);
h(2) = plot(NaN,NaN,'r','LineWidth',2);
legend(h, '-80mV','40mV');
