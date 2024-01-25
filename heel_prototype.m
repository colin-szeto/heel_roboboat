function righting_arms = heel_prototype()

angles = 0:5:65;
bouyant = zeros(2,length(angles));
%start = zeros(3,length(angles));
center = zeros(2,length(angles));

bouyant(1:2,1) = [0;0.17 ];
bouyant(1:2,2) = [.054;.014 ];
bouyant(1:2,3) = [.075;.008; ];
bouyant(1:2,4) = [.079;.001 ];
bouyant(1:2,5) = [.075;-.005 ];
bouyant(1:2,6) = [.071;-.012 ];
bouyant(1:2,7) = [.066;-.017 ];
bouyant(1:2,8) = [.06;-.023 ];
bouyant(1:2,9) = [.055;-.03 ];
bouyant(1:2,10) = [.045;-.031 ];
bouyant(1:2,11) = [.035;-.031]; % 50
bouyant(1:2,12) = [.03;-.037]; % 55
bouyant(1:2,13) = [.024;-.042]; % 60
bouyant(1:2,14) = [.017;-.046]; % 65


%bouyant(1:2,12) = [.106;-.178];


center(1:2,1) = [0;0.163];
center(1:2,2) = [0.006;0.125];
center(1:2,3) = [0.013;0.124];
center(1:2,4) = [0.019;0.123];
center(1:2,5) = [0.025;0.121];
center(1:2,6) = [0.031;0.118];
center(1:2,7) = [0.037;0.115];
center(1:2,8) = [0.043;0.112];
center(1:2,9) = [0.048;0.108];
center(1:2,10) = [0.052;0.103]; % 45
center(1:2,11) = [0.057;0.099]; % 50
center(1:2,12) = [0.061;0.094]; % 55
center(1:2,13) = [0.064;0.088]; % 60
center(1:2,14) = [0.067;0.082]; % 65

righting_arms = bouyant(1,:)-center(1,:); % in degrees
end