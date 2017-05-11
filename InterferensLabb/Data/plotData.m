files = {'4-spalt data' 'dubbelspalt data' 'Edge data' 'enkelspalt data' 'tråd låg expo data' 'tråd hög expo data' 'tråd+enkelspalt data' 'Variabel enkelspalt 1 data' 'Variabel enkelspalt 2 data' 'Variabel enkelspalt 3 data'};

for i=1:length(files)
    file = files{i};
    data = importdata(file);

    figure('Name', file);
    
    hold on;
    grid on;
    box on;
    if ~strcmp(file, 'Edge data')
        plot(data(:,1), data(:,5), 'b');
    end
    plot(data(:,1), data(:,2), 'r');
    hold off;

    h = legend('Teoretisk modell', 'Experiment');
    set(h,'Interpreter','latex');
    
    ylim([0 1]);
    
    xlabel('Avst\aa{}nd (mm)', 'Interpreter', 'latex');
    ylabel('Normaliserad intensitet (W/m$^2$)', 'Interpreter', 'latex');
    
    %print(strcat('figurer/', file), '-depsc');
end

