theta_1 = -90 + (90--90)*rand();
theta_2 = 0 + (130-0)*rand();
theta_3 = -180 + (-45--180)*rand();
theta_4 = -(theta_2+theta_3);

%Constants
a_1 = 13.2; a_2 = 142; a_3 = 158.8; a_4 = 44.5;       %Link lengths
d_1 = 106.1;                                          %Link offsets

%Number of entries
n=10000;

%Define angle matrix
angleMatrix = zeros([n 4]);

for i = 1:n

    %Randomly generate angle sets
    theta_1 = -90 + (90--90)*rand();
    theta_2 = 0 + (130-0)*rand();
    theta_3 = -180 + (-45--180)*rand();
    theta_4 = -(theta_2+theta_3);

    %Populate the angle matrix
    angleMatrix(i,1) = theta_1;
    angleMatrix(i,2) = theta_2;
    angleMatrix(i,3) = theta_3;
    angleMatrix(i,4) = theta_4;
end

%Define position vectors
positionX = zeros([n 1]);
positionY = zeros([n 1]);
positionZ = zeros([n 1]);

for j = 1:n

    %Retrieve angles
    theta_1 = angleMatrix(j,1);
    theta_2 = angleMatrix(j,2);
    theta_3 = angleMatrix(j,3);
    theta_4 = angleMatrix(j,4);

    %Frame 1 to world
    T_01 = [cosd(theta_1) 0 sind(theta_1) a_1*cosd(theta_1);
        sind(theta_1) 0 -cosd(theta_1) a_1*sind(theta_1);
        0 1 0 d_1;
        0 0 0 1];

    %Frame 2 to 1
    T_12 = [cosd(theta_2) -sind(theta_2) 0 a_2*cosd(theta_2);
        sind(theta_2) cosd(theta_2) 0 a_2*sind(theta_2);
        0 0 1 0;
        0 0 0 1];
    
    %Frame 3 to 2
    T_23 = [cosd(theta_3) -sind(theta_3) 0 a_3*cosd(theta_3);
        sind(theta_3) cosd(theta_3) 0 a_3*sind(theta_3);
        0 0 1 0;
        0 0 0 1];
    
    %Frame 4 to 3 - constant frame
    T_34 = [cosd(theta_4) 0 sind(theta_4) a_4*cosd(theta_4);
        sind(theta_4) 0 -cosd(theta_4) a_4*sind(theta_4);
        0 1 0 0;
        0 0 0 1];
    
    %Total transformation matrix
    T_bw = (((T_01*T_12)*T_23)*T_34);

    %Populate position matrix
    positionX(j,1) = T_bw(1,4);
    positionY(j,1) = T_bw(2,4);
    positionZ(j,1) = T_bw(3,4);
end


%Plot work envelope
plot3(positionX,positionY, positionZ,'o')
xlabel('X [mm]')
ylabel('Y [mm]')
zlabel('Z [mm]')


