function [] = error_plt()

figure;

% TD plots: 
armsErr_TD = err_mc(100,0.15);
h = plot( armsErr_TD, 'g-x' ); ah = [h]; 
hold on; 
armsErr_TD = err_mc(100,0.1);
h = plot( armsErr_TD, 'g-o' ); ah = [ah; h]; 
% hold on; 
armsErr_TD = err_mc(100,0.05);
h = plot( armsErr_TD, 'g-d' ); ah = [ah; h]; 
% hold on; 
%
% MC plots: 
[armsErr_TD,armsErr_MC] = err_mc(100,0.01);
h = plot( armsErr_MC, '-o' ); ah = [ah; h];
% hold on; 
[armsErr_TD,armsErr_MC] = err_mc(100,0.02);
h = plot( armsErr_MC, '-' ); ah = [ah; h];
% hold on; 
[armsErr_TD,armsErr_MC] = err_mc(100,0.03);
h = plot( armsErr_MC, '--' ); ah = [ah;h];
% hold on; 
[armsErr_TD,armsErr_MC] = err_mc(100,0.04);
h = plot( armsErr_MC, '-.' ); ah = [ah;h];
% hold on; 

xlabel('walks/trials'); ylabel('average RMS error'); 
legend( ah, { 'TD \alpha=0.15', 'TD \alpha=0.1', 'TD \alpha=0.05', ...
              'MC \alpha=0.01', 'MC \alpha=0.02', 'MC \alpha=0.03', 'MC \alpha=0.04' } ); 








