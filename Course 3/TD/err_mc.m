function [armsErr_TD,armsErr_MC] = err_mc(nTrials,alpha)
% for statistical significance have this many samples for each walk trial: 
N_MC_TRAILS = 100; 

% the true state value function: 
truth = (1:5)/6;

armsErr_TD = zeros(1,nTrials); samps_TD = zeros(1,N_MC_TRAILS); 
armsErr_MC = zeros(1,nTrials); samps_MC = zeros(1,N_MC_TRAILS); 
for nw=1:nTrials
  for mi=1:N_MC_TRAILS
    Vmc = MonteCarlo(alpha,nw);
    Vtd = TempDif(alpha,nw);
    Vtd = Vtd(2:6);
    Vmc = Vmc(2:6);
    samps_TD(mi) = sqrt(mean((Vtd-truth).^2)); 
    samps_MC(mi) = sqrt(mean((Vmc-truth).^2)); 
  end  
  armsErr_TD(nw) = mean(samps_TD); 
  armsErr_MC(nw) = mean(samps_MC); 
end
