% Compensador integrador
% 
% Ri=10;
% Cf=100*10^-8;
% 
% %Funçao de transferencia do compensador
% 
% Gc1=TF([1],[(Ri*Cf) (0)]);
% 
% %--------------------------------------------------------------------------
% 
% % Compensador tipo 2
% 
%R1=10*10^3;
%R2=10*10^3;
%C1=220*10^-9;
%C2=1*10^-9;
% 
% %Funçao de transferencia do compensador
 
%Gc2=TF([(C1*R2) (1)],[(R1*R2*C1*C2) (R1*(C1+C2)) (0)]);
 



%--------------------------------------------------------------------------

% Compensador tipo 3

R1=510*10^3;
R2=56*10^3;
R3=2.2*10^3;
C1=(15+2.2)*10^-9;
C2=(47+47)*10^-12;
C3=2.2*10^-9;

%Funçao de transferencia do compensador

Gc3=tf([-(R2*C1*C3*(R3+R1)) -((R3+R1)*C3+(R2*C1)) -(1)],[(R1*R1*R2*R3*C1*C2*C3) (R1*R1*R2*C1*C2+R1*R1*C3*R3*(C1+C2)) (R1*R1*(C1+C2)) (0)]);
