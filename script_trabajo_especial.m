% Darle un valor a epsilon (cuidado si es muy chico)
epsilon = 0.01;
dni = 38529702;

% Llamamos al Montecarlo que tenemos que codear
[probabilidad, todas_las_probabilidades] = llamadaf(dni, epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('Probabilidad de acierto = %d: \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(todas_las_probabilidades);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on