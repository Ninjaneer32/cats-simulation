% height(:,1) = steadystate.VarName2/1000;
% height(:,2) = steadystate.VarName3/1000;
% height(:,3) = steadystate.VarName4/1000;
% acc(:,1) = steadystate.VarName6/1000000;
% acc(:,2) = steadystate.VarName7/1000000;
% acc(:,3) = steadystate.VarName8/1000000;

% plot(acc(:,3))
% Get Variance of height
% 
% height_var = ((std(height(:,1)) + std(height(:,2)) + std(height(:,3)))/3)^2
% 
% % Get Variance of acceleration
% acc_var = ((std(acc(2500:4500,1)) + std(acc(2500:4500,2)) + std(acc(2500:4500,3)))/3)^2

height = teraterm2.VarName14/1000;
vel = teraterm2.VarName16/1000;
plot(height)
% plot(vel)
A = [0, 1, 0; 0, 0, 1; 0, 0, 0];
A = expm(A*0.01)
Q = [0.1, 0; 0, 0];
Gd = A*[0, 0; 1, 0; 0, 1];
dummy = Gd*Q*Gd'
Q_dash = 0.1;
Gd = A*[0; 1; 0];
dummy2 = Q_dash*Gd*Gd'
