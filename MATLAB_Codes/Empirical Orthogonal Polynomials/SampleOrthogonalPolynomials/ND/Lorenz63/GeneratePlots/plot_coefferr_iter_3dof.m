function plot_coefferr_iter_3dof(X1, YMatrix1)
%CREATEFIGURE(X1, YMatrix1)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 16-Aug-2019 13:25:01

% Create figure
figure1 = figure('OuterPosition',[0 0 1 1]);
set(figure1,'units','normalized','outerposition',[0 0 1 1]);

% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.25 0.15 0.55 0.75]);
hold(axes1,'on');

% Create multiple lines using matrix input to loglog
log1 = semilogy(X1,YMatrix1,'MarkerSize',8,...
    'LineWidth',2,...
    'Parent',axes1);
set(log1(1),'DisplayName','state x','MarkerFaceColor',[1 0 0],...
    'Marker','o',...
    'MarkerSize',12,...
    'Color',[1 0 0]);
set(log1(2),'DisplayName','state y','MarkerFaceColor',[0 1 0],...
    'Marker','s',...
    'MarkerSize',12,...
    'Color',[0 1 0]);
set(log1(3),'DisplayName','state z',...
    'Marker','d',...
    'MarkerFaceColor',[0 0 1],...
    'MarkerSize',12,...
    'Color',[0 0 1]);

box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontSize',30,'YMinorTick','on','YScale','log','XTick',[0 1 2 3]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.71 0.78 0.065 0.082],...
    'FontSize',25,...
    'FontWeight','normal');

% Create ylabel
% ylabel('$\frac{\|\mathbf{\xi}^{(k)} - \mathbf{\xi}^{*}\|_2}{\|\mathbf{\xi}^{*}\|_2}$','FontWeight','bold',...
%     'FontSize',50,...
%     'Interpreter','latex');

ylabel('error $e_{\xi}$','FontWeight','bold',...
    'FontSize',40,...
    'Interpreter','latex');



% Create xlabel
xlabel('Iteration number k','FontWeight','bold','FontSize',40,...
    'Interpreter','latex');
