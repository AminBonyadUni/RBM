function [MSE,RMSE,ARE,er]=getr()
    %Hidden Layer
    m=[100,400,800,1000];
    RBM=[0.0667,0.0412,0.0367,0.0361];
    FRBM_STFN=[0.0523,0.0281,0.0249,0.0254];
    FRBM_GFN=[0.0486,0.0254,0.0236,0.0230];
    FT2RBM_STFN=[0.0389,0.0246,0.0227,0.0224];
    FT2RBM_TFN=[0.0364,0.0254,0.0219,0.0221];

    figure;
    p1=plot(m,RBM,'--k');
    p1.LineWidth = 1;
    p1.Marker = 'o';
    hold on;

    p2=plot(m,FRBM_STFN,'--m');
    p2.LineWidth = 1;
    p2.Marker = 's';
    hold on;

    p3=plot(m,FRBM_GFN,'-.g');
    p3.LineWidth = 1;
    p3.Marker = '>';
    hold on;

    p4=plot(m,FT2RBM_STFN,'--r');
    p4.LineWidth = 1;
    p4.Marker = 'd';
    hold on;

    p5=plot(m,FT2RBM_TFN,'--b');
    p5.LineWidth = 1;
    p5.Marker = 'X';

    xlabel('m');
    ylabel('Error rate');
    title(' m Number of Hidden Units');
    legend('RBM','FRBM-STFN','FRBM-GFN','FT2RBM-STFN','FT2RBM-TFN');

    % Learning Rate
    eta=[1.5000    1.0000    0.5000    0.1000    0.0500];
    % eta=[0.0500    0.1000    0.5000    1.0000    1.5000];
    RBM =[42.0400   40.6000   38.2500   40.5600   44.500];
    FRBM_STFN =[28.3500   26.7300   24.7500   27.8300   30.7500];
    FRBM_GFN =[22.2600   20.9600   21.5900   26.1200   30.2200];
    FT2RBM_STFN =[19.7600   19.8700   19.5200   20.5300   21.2400];
    FT2RBM_TFN =[19.2900   19.6860   17.5470   16.5260   18.9500];

    figure;
    p1=plot(eta,RBM,'--k');
    p1.LineWidth = 1;
    p1.Marker = 'o';
    hold on;

    p2=plot(eta,FRBM_STFN,'--m');
    p2.LineWidth = 1;
    p2.Marker = 's';
    hold on;

    p3=plot(eta,FRBM_GFN,'-.g');
    p3.LineWidth = 1;
    p3.Marker = '>';
    hold on;

    p4=plot(eta,FT2RBM_STFN,'--r');
    p4.LineWidth = 1;
    p4.Marker = 'd';
    hold on;

    p5=plot(eta,FT2RBM_TFN,'--b');
    p5.LineWidth = 1;
    p5.Marker = 'X';

    xlabel('eta');
    ylabel('ARE');
    title(' Learning Rate');
    legend('RBM','FRBM-STFN','FRBM-GFN','FT2RBM-STFN','FT2RBM-TFN');

    %Epoch
    epoch=[1 20 40 60 80 100];
    RBM =[6100000;2920000;2880000;2830000;2810000;2790000]';
    FRBM_STFN =[5350000;2470000;2420000;2390000;2370000;2350000]';
    FRBM_GFN =[5300000;2440000;2390000;2360000;2320000;2290000]';
    FT2RBM_STFN =[5250000;2400000;2370000;2350000;2300000;2270000]';
    FT2RBM_TFN =[5250000;2390000;2365000;2330000;2280000;2265000]';

    figure;
    p1=plot(epoch,RBM,'-k');
    p1.LineWidth = 1;
    p1.Marker = 'o';
    hold on;

    p2=plot(epoch,FRBM_STFN,'--m');
    p2.LineWidth = 1;
    p2.Marker = 's';
    hold on;

    p3=plot(epoch,FRBM_GFN,'-.g');
    p3.LineWidth = 1;
    p3.Marker = '>';
    hold on;

    p4=plot(epoch,FT2RBM_STFN,'--r');
    p4.LineWidth = 1;
    p4.Marker = 'd';
    hold on;

    p5=plot(epoch,FT2RBM_TFN,'--b');
    p5.LineWidth = 1;
    p5.Marker = 'X';

    xlabel('epoch');
    ylabel('MSE');
    title('Number of Epoch');
    legend('RBM','FRBM-STFN','FRBM-GFN','FT2RBM-STFN','FT2RBM-TFN');
    RMSE=1;
    MSE=1;
    ARE=1;
    er=1;
end