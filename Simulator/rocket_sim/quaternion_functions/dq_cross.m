function dquat_cross = dq_cross(q,p)
%DQ_CROSS Summary of this function goes here
%   Detailed explanation goes here

q1_cross = [0, 0, 0, 0;...
            q(2), q(1), -q(4), q(3);...
            q(3), q(4), q(1), -q(2);...
            q(4), -q(3), q(2), q(1)];
q2_cross = [0, 0, 0, 0;...
            q(6), q(5), -q(8), q(7);...
            q(7), q(8), q(5), -q(6);...
            q(8), -q(7), q(6), q(5)];


% q1_cross = [q(4), -q(3), q(2), q(1);...
%             q(3), q(4), -q(1), q(2);...
%             -q(2), q(1), q(4), q(3);...
%             0, 0, 0, 0];
% q2_cross = [q(8), -q(7), q(6), q(5);...
%             q(7), q(8), -q(5), q(6);...
%             -q(6), q(5), q(8), q(7);...
%             0, 0, 0, 0];
        
        
dquat_cross = [q1_cross, zeros(4);...
               q2_cross, q1_cross]*p;
end
