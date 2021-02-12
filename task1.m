% Task 1

G_axn = 0.08;
for lambda_c = [1:0.1:1.5];
t = [0 25];
syms lambda_g
myfun = @(t,lambda_g) G_axn .* max(0,((1+G_axn.*t)./lambda_g)-lambda_c)
lambda_g0=1;
[t,lambda_g] = ode45(myfun,t,lambda_g0);
txt = ['\lambda^c = ',num2str(lambda_c)];
plot(t,lambda_g,'DisplayName',txt);
hold on;
end
hold off;
xlabel('Time in hours')
ylabel('\lambda^g')
legend ('show')
     