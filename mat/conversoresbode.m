% % Especificaçoes conversor Buck
%L=405*10^-6;
%C=100*10^-6;
%Rse=0.162;
%Rl=0;
%Ro=23.04;
%Vin=13.5;

% %Funçao de transferencia do conversor Buck 
%GpBuck=tf([Vin*Ro*C*Rse Vin*Ro],[(L*C*(Ro+Rse)) (C*(Ro*Rl+Ro*Rse+Rse*Rl)+L) (Ro+Rl)]);


%------------------------------------------------------------------------------------------------------------
% Especificaçoes conversor Boost
L=643.7*10^-6;
C=2*47*10^-6;
Rse=0.49/2.0; % Rcap (2 em paralelo)
Rl=0.48; % Rind
Ro=19.2;
Vin=13.5;
D=0.4375;

%Funçao de transferencia do conversor Boost 
A=Vin/(L*C*(1-D)^2);
GpBoost = tf([(-A*Rse*L*C/Ro) A*(Rse*C-L/Ro) A],[ 1 ((1/(Ro*C))+(Rse/L)) 1/(L*C)]);


%------------------------------------------------------------------------------------------------------------
% Especificaçoes conversor Buck-Boost
%L=400*10^-6;
%C=100*10^-6;
%Rse=0.1;
%Ro=12;
%Vin=12;
%D=0.5;
% 
% %Funçao de transferencia do conversor Buck-Boost 
%A=Vin/(L*C*(1-D)^2);
%GpBuckBoost=tf([(-A*D*Rse*L*C/Ro) A*(Rse*C-(D*L/Ro)) A],[ 1 ((1/(Ro*C))+(Rse/L)) 1/(L*C)]);