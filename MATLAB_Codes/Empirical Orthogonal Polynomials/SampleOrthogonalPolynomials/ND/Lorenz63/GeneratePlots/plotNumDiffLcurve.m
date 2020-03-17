function plotNumDiffLcurve(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X5, Y5, X6, Y6)
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

%  Auto-generated by MATLAB on 15-Aug-2019 16:59:50

% Create figure
figure1 = figure('OuterPosition',[0 0 1 1]);
set(figure1,'units','normalized','outerposition',[0 0 1 1]);

% Create axes
axes1 = axes('Parent',figure1,'Position',[0.25 0.15 0.55 0.75]);
hold(axes1,'on');

% Create loglog
loglog(X1,Y1,'DisplayName','state x','LineWidth',2,'LineStyle','--',...
    'Color',[0 0 0]);

% Create loglog
loglog(X2,Y2,'DisplayName','Corner','MarkerSize',15,'Marker','x',...
    'LineWidth',3,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Create loglog
loglog(X3,Y3,'DisplayName','Optimal','MarkerFaceColor',[0 1 0],...
    'MarkerSize',8,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[0 1 0]);

% Create loglog
loglog(X4,Y4,'DisplayName','state y','LineWidth',2,'Color',[0 0 0]);

% Create loglog
loglog(X5,Y5,'DisplayName','Corner','MarkerFaceColor',[1 0 0],...
    'MarkerSize',15,...
    'Marker','x',...
    'LineWidth',3,...
    'LineStyle','none',...
    'Color',[1 0 0]);

% Create loglog
loglog(X6,Y6,'DisplayName','Optimal','MarkerFaceColor',[0 1 0],...
    'MarkerSize',8,...
    'Marker','o',...
    'LineStyle','none',...
    'Color',[0 1 0]);

box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',20,'FontWeight','bold','XMinorTick','on','XScale',...
    'log','YMinorTick','on','YScale','log');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'FontSize',18,'FontWeight','normal');

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
