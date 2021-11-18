%% Figure S7
clc;clear;load('Figure_S7.mat');

%% A


figure;bar(1,nanmean(ACV30min{:,1}),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(ACV30min{:,2}),0.4,'FaceAlpha',0.1);
hold on;
bar(3,nanmean(ACV30min{:,3}),0.4,'FaceAlpha',0.1);
hold on;
bar(4,nanmean(ACV30min{:,4}),0.4,'FaceAlpha',0.1);


UnivarScatter([ACV30min{:,1},ACV30min{:,2},ACV30min{:,3},ACV30min{:,4}]...
    ,'Width',0.2,'Compression',15,'Label',{'W1118 before','W1118 after 30min','KK CRISPR before','KK CRISPR after 30min'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('ACV - Habituation');ylim([-45 110])

%% B 

figure;bar(1,nanmean(w1118_before),0.4,'FaceAlpha',0.1);
hold on
bar(2,nanmean(w1118_after1h),0.4,'FaceAlpha',0.1);

UnivarScatter([w1118_before,w1118_after1h]...
    ,'Width',0.2,'Compression',15,'Label',{'W1118 before','W1118 after 1h'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('Ethyl Butyrate - Habituation -1 Hour');ylim([-110 110])

%% C
figure;
bar(1,nanmean(minnoodorcontrol{:,1}),0.4,'FaceAlpha',0.1);
hold on;
bar(2,nanmean(minnoodorcontrol{:,2}),0.4,'FaceAlpha',0.1);
UnivarScatter([minnoodorcontrol{:,1},minnoodorcontrol{:,2}]...
    ,'Width',0.2,'Compression',15,'Label',{'KK CRISPR before','KK CRISPR after 30min'},'Whiskers','none');
xtickangle(45);
box off;ylabel({'Valance'});
set(gca,'TickDir','out');
title('Ethyl Butyrate - Habituation-No odor control');ylim([-110 110])
