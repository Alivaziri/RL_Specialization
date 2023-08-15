function v = TempDif(alpha,nEpisodes)
nStates = 5+2;
vTrue(1) = 0;
vTrue(2) = 1/6;
vTrue(3) = 2/6;
vTrue(4) = 3/6;
vTrue(5) = 4/6;
vTrue(6) = 5/6;
vTrue(1) = 1;
gamma = 1;
if nargin == 0
    alpha = 0.01;
    nEpisodes = 100;
end
v = [0 , 0.5 , 0.5 , 0.5 , 0.5 , 0.5 , 0];

%% main loop
for i = 1 : nEpisodes
    R = 0;
    [x,r] = state_generator();
    xSize = max(size(x));
    
    for t = 1 : xSize
        if t == xSize
            %             v(x(end)) = v(x(end)) + alpha * ( r(end) + gamma*v(x(end)) - v(x(end)) );
            break;
        else
            v(x(t)) = v(x(t)) + alpha * ( r(t+1) + gamma*v(x(t+1)) - v(x(t)) );
        end
        if t ~= xSize
            R = r(t) + R;
        end
    end
end
