%Epoch
    epoch=[0 20 40 60 80 100];
    RBM =[24000;10000;7500;7000;6500;6300]';
    FRBM =[11000;6800;6200;5900;5700;5500]';
    FT2RBM =[9500;6250;5900;5500;5200;4900]';

    figure;
    p1=plot(epoch,RBM,'--k');
    p1.LineWidth = 1;
%     p1.Marker = 'o';
    hold on;

    p2=plot(epoch,FRBM,'--b');
    p2.LineWidth = 1;
%     p2.Marker = 's';
    hold on;

    p5=plot(epoch,FT2RBM,'--r');
    p5.LineWidth = 1;
%     p5.Marker = 'X';

    xlabel('epoch');
    ylabel('MSE');
    title('Number of Epoch');
    legend('RBM','FRBM','FT2RBM');
    RMSE=1;
    MSE=1;
    ARE=1;
    er=1;