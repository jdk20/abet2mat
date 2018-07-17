function plot_abet(trials)
S = {'regular','correct';'regular','incorrect'; ... 
    'correction','correct';'correction','incorrect'};
M = {'k.','k';'ks','g';'gs','w';'ro','r';'ro','w';};
h = [];

figure(1)
box off; hold on;
for j = 0:4
    if j == 0 % reward collection
        temp = cell2mat(trials(strcmp(trials(:,1),'reward'),5:6));
    elseif j ~= 0 % regular and correction trials
        temp = cell2mat(trials(strcmp(trials(:,2),S{j,1}) & ...
                strcmp(trials(:,3),S{j,2}),5:6));
    end
 
    if ~isempty(temp)
        % plot lines from trial start to trial end
        for k = 1:size(temp,1)
            line([temp(k,1),temp(k,2)],[1,1],'Color','k','LineStyle','-');
        end
        % plot trial screen touch
        h{j+1} = plot(temp(:,2),1,M{j+1,1},'MarkerFaceColor',M{j+1,2}, ...
            'MarkerSize',8);
    end
end

% legend
if size(h,2) == 5
    h1 = legend([h{1}(1),h{2}(1),h{3}(1),h{4}(1),h{5}(1)],'Reward', ... 
        'Regular trial (correct)','Regular trial (incorrect)', ...
        'Correction trial (correct)','Correction trial (incorrect)');
    set(h1,'box','off');
end
set(gca,'YTick',[]);
xlabel('Time (seconds)');