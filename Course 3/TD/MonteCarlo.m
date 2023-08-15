function v = MonteCarlo(alpha,nEpisodes)
nStates = 5 + 2;
vTrue(1) = 0;
vTrue(2) = 1/6;
vTrue(3) = 2/6;
vTrue(4) = 3/6;
vTrue(5) = 4/6;
vTrue(6) = 5/6;
vTrue(1) = 0;
gamma = 1;
if nargin == 0
    alpha = 0.01;
    nEpisodes = 100;
end
v = [0 , 0.5 , 0.5 , 0.5 , 0.5 , 0.5 , 0];

%% main loop
for i = 1 : nEpisodes
    [x,r] = state_generator();
    xSize = max(size(x));

    G = sum(r);
    for t = 1 : xSize
        if t == xSize
            break;
        end
        v((x(t))) = v((x(t))) + alpha * (G - v((x(t))));
        
    end
end