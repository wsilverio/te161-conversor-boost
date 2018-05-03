clear all; close all; clc ;

arquivo_csv = 'scope_12.csv';

%titulo_grafico = 'Ripple de tensao para Vin = 13,5V';
%titulo_grafico = 'R para 2R com Vin = 9V';
%titulo_grafico = 'Vds com Vin = 9V';
titulo_grafico = '';

tabela = csvread(arquivo_csv, 2);

x = tabela(:,1);
vout = tabela(:,2);
%vin = tabela(:,3);

label_x = 'Tempo (s)';
label_y = 'Tensao (V)';

figure;
%plot(x,vin);

xlabel(label_x);
ylabel(label_y);
xlabel(label_x);
ylabel(label_y);
title(titulo_grafico);

hold on;
plot(x,vout);
%legend('Vin', 'Vout');
hold off;
