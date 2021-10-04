%% Figure 3
clc;clear;load('Figure_3.mat');
%% D

figure;
bar([1 2],[mean(wt_all_flies),mean(wt_second_pulse_all_flies)],'FaceAlpha',0.1,'BarWidth',1);
hold on;
plot([1 2],[wt_all_flies,wt_second_pulse_all_flies],'k');
hold on;
bar([4 5],[mean(RNAi_all_flies),mean(RNAi_second_pulse_all_flies)],'FaceAlpha',0.1,'BarWidth',1);
hold on;
plot([4 5],[RNAi_all_flies,RNAi_second_pulse_all_flies],'k');
hold on;
bar([7 8],[mean(No_Ca_all_flies),mean(No_Ca_second_pulse_all_flies)],'FaceAlpha',0.1,'BarWidth',1);
hold on;
plot([7 8],[No_Ca_all_flies,No_Ca_second_pulse_all_flies],'k');
hold on;
bar([10 11],[mean(KK_all_flies),mean(KK_second_pulse_all_flies)],'FaceAlpha',0.1,'BarWidth',1);
hold on;
plot([10 11],[KK_all_flies,KK_second_pulse_all_flies],'k');

box off;set(gca,'TickDir','out');ylabel({'Potential (mV)'});ylim([0 100]);


set(gca,'XTick',[1.5 4.5 7.5 10.5],...
    'XTickLabel',...
    {'wt','RNAi','0 Ca','KK'});
%% E

figure;
bar(1,nanmean(GH298_all_flies),0.4,'FaceAlpha',0.1)
hold on
bar(2,nanmean(GH298_prepulse),0.4,'FaceAlpha',0.1)
hold on
bar(3,nanmean(GH298_kk_all_flies),0.4,'FaceAlpha',0.1)
hold on
bar(4,nanmean(GH298_kk_prepulse),0.4,'FaceAlpha',0.1)
hold on

UnivarScatter([GH298_all_flies, GH298_prepulse ,GH298_kk_all_flies ,GH298_kk_prepulse]...
    ,'Width',0.2,'Compression',15,'Label',{'wt','wt prepulse','kk','kk prepulse'},'Whiskers','none')
xtickangle(45);box off;ylim([0 70]);
set(gca,'TickDir','out');ylabel({'Potential (mV)'});

