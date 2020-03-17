function plot_TikLCurves_3dof_norm(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5, X6, Y6, X7, Y7, X8, Y8, X9, Y9)
%CREATEFIGURE(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5, X6, Y6, X7, Y7, X8, Y8, X9, Y9)
%  X1:  vector of x data
%  Y1:  vector of y data
%  X2:  vector of x data
%  Y2:  vector of y data
%  X3:  vector of x data
%  Y3:  vector of y data
%  X4:  vector of x data
%  Y4:  vector of y data
%  X5:  vector of x data
%  Y5:  vector of y data
%  X6:  vector of x data
%  Y6:  vector of y data


%  Auto-generated by MATLAB on 16-Aug-2019 15:43:28

% Create figure
figure1 = figure('OuterPosition',[0 0 1 1]);
set(figure1,'units','normalized','outerposition',[0 0 1 1]);
% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.25 0.15 0.55 0.75]);
hold(axes1,'on');

% Create loglog
p1 = loglog(X1,Y1,'DisplayName','state x','LineWidth',3,'LineStyle','--',...
    'Color',[0 0 0]);
% Create loglog
p2 = loglog(X4,Y4,'DisplayName','state y','LineWidth',3,'LineStyle','-.',...
    'Color',[0 0 0]);

p3 = loglog(X7,Y7,'DisplayName','state z','LineWidth',3,'Color',[0 0 0]);


% Create loglog
p5 = loglog(X3,Y3,'DisplayName','Optimal','MarkerFaceColor',[0 1 0],...
    'MarkerSize',15,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[0 1 0]);

% Create loglog
p4 = loglog(X2,Y2,'DisplayName','Corner','MarkerSize',25,'Marker','x',...
    'LineWidth',3,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Create loglog
p7 = loglog(X6,Y6,'DisplayName','Optimal','MarkerFaceColor',[0 1 0],...
    'MarkerSize',15,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[0 1 0]);

% Create loglog
p6 = loglog(X5,Y5,'DisplayName','Corner','MarkerFaceColor',[1 0 0],...
    'MarkerSize',25,...
    'Marker','x',...
    'LineWidth',3,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Create loglog
p9 = loglog(X9,Y9,'DisplayName','Optimal','MarkerFaceColor',[0 1 0],...
    'MarkerSize',15,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[0 1 0]);

% Create loglog
p8 = loglog(X8,Y8,'DisplayName','Corner','MarkerFaceColor',[1 0 0],...
    'MarkerSize',20,...
    'Marker','x',...
    'LineWidth',3,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[1 1000]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[1000 15000]);
box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
% set(axes1,'FontSize',25,'FontWeight','bold','XMinorTick','on','XScale',...
%     'log','xlim',[3 1000],'YMinorTick','on','YScale','log','ylim',[1000 15000],'YTick',[1000 5000 10000 15000],...
%     'YTickLabel',{'10^3','5 x 10^3','10^4','1.5 x 10^4'});
set(axes1,'FontSize',30,'Xlim',[-1.2 1.2],'Ylim',[-1.2 1.2]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',25,'FontWeight','normal');
set(get(get(p6,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
set(get(get(p7,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
set(get(get(p8,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
set(get(get(p9,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');

% Create ylabel
ylabel('$\|\mathbf{D}\dot{\mathbf{x}}\|_2$',...
    'FontWeight','bold',...
    'FontSize',40,...
    'Interpreter','latex');

% Create xlabel
xlabel('$\|\mathbf{A}\dot{\mathbf{x}} - \hat{\mathbf{x}}\|_2$',...
    'FontWeight','bold',...
    'FontSize',40,...
    'Interpreter','latex');