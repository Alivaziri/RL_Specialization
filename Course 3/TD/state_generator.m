function [x,r] = state_generator()
% x is state
% r is reward
x(1) = 4;
r(1) = 0;
for k = 1 : 100
    if x(end) == 1 || x(end) == 7
        break
    end
    action_totake = randi(2);
    if action_totake == 1
        x = [x , x(end) + 1];
        %     r = [r , r(end)];
    else
        x = [x , x(end) - 1];
        %     r = [r , r(end)];
    end
    r = [r , 0];
    if x(end) == 7
        r(end) = 1;
    end
end