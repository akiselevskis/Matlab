%% task 1 begins
t = 0:0.01:5*pi;
y = sin(t);
plot(t,y)
h = plot(t,y)
%% uzdevums 6 (figure(6))
% get(h)
my_line1 = get(h, 'LineWidth')
set(h, 'LineWidth',5)
%% uzdevums 7
figure(7)
h = plot(t,y)
h.set
my_line12=h.LineWidth
h.LineWidth=5
%% uzdevums 8
% katru reizi vajag jaunu plot jo jauns uzdevums!
h = plot(t,y)
%get(h)
my_line2 = set(h,'LineStyle')
my_line3 = set(h,'Marker')
%% uzdevums 9
figure(9)
h=plot(t,y)
%ha = axes
%ha = get(h, "axes")
%ha = axes
get(h)
ha = get(h, 'parent')
%% uzdevums 10
h=plot(t,y)
get(h)
ha = get(h, 'parent')
my_font_size = get(ha, 'fontsize')
set(ha, 'fontsize',20)
%% uzdevums 11
h = plot(t,y)
get(h)
ha = get(h, 'parent')
my_font_size = get(ha, 'Color')
%get(ha)
%uncomment to see all parent ha properties
set(ha, 'XColor', '0 1 0')
set(ha, 'YColor', '0 1 0')
% 0 1 0 vai green
%% uzdevums 12
h=plot(t,y)
ha = get(h, 'parent')
grid
get (ha, 'Xtick')
%get(ha)
%x = max(sin(pi))
set(ha,'XTick', [pi/2: pi: 6*pi])
%% uzdevums 13
h=plot(t,y)
ha = get(h, 'parent')
grid
get (ha, 'Xtick')
set(ha,'XTick', pi/2: pi: 6*pi)
set(ha,'XTickLabel', {'\pi/2', '3\pi/2', '5\pi/2', '7\pi/2', '9\pi/2'})
%% uzdevums 14
h=plot(t,y)
ha = get(h, 'parent')
hf = get(ha, 'parent')
%get(hf)
set(hf, 'Color', 'yellow')
hr = get(hf, 'Parent')
%% uzdevums 16
figure(16)
for i = 1:5
t = 0:0.01:2*pi;
y = sin(t+i/5);
plot(t,y),hold on
str{i} = sprintf('sin(t+%d/5)',i);
end
hold off
legend(str)
