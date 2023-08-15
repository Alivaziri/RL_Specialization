function fig_estimated()
nStates = 5;
res = zeros(4,nStates); 

res1(1,:) = MonteCarlo(0.1,0);
res(1,:) = res1(1,2:6)
res1(2,:) = MonteCarlo(0.1,1); 
res(2,:) = res1(2,2:6)
res1(3,:) = MonteCarlo(0.1,10); 
res(3,:) = res1(3,2:6)
res1(4,:) = MonteCarlo(0.1,100);
res(4,:) = res1(4,2:6)
figure
truth = (1:5)/6; 
fh = [ plot( 1:5, truth, '*g-' ) ];
hold on; 
ii=1; fh = [ plot( 1:5, res(ii,:), 'rx-' ), fh ];
ii=2; fh = [ plot( 1:5, res(ii,:), 'b.-' ), fh ];
ii=3; fh = [ plot( 1:5, res(ii,:), 'bs-' ), fh ];
ii=4; fh = [ plot( 1:5, res(ii,:), 'bd-' ), fh ]; 

legend( fliplr(fh), { 'truth', '0', '1', '10', '100' }, 'location', 'northwest' ); 

end