clear;
clc;
close all;

g=9.8;
m=1;
b=0;
dt = 0.002;
t = 1000;
d=1;

figure(1)
k_list = logspace(0,4,16);

Y = zeros(floor(t/dt)+1,4,4);
parfor k_i=1:size(k_list,2)
    k=k_list(k_i);
    Up=@(s) k*(s-d).*heaviside(s-d);
%     Up=@(s) k*(s-d);
    [~,Y(:,:,k_i)]=ode45(@(t,x) odefun(t, x, Up, g,m, b, dt), 0:dt:t,[0.5,0,pi/2,0]);
end

figure(1)
r_list = zeros(size(k_list));
t_list = zeros(size(k_list));

for k_i=1:size(k_list,2)
%    fft_plot(Y(:,:,k_i), ['k=',num2str(k_list(k_i))],dt);
%    saveas(gcf,[num2str(k_i),'.png'])
    [w,f_r,f_t,~] = sig_fft(Y(:,:,k_i),dt);
    w = w(2:end);
    % make_video(['video_', num2str(k_i),'.avi'], Y(1:floor(1/dt*10),:,k_i), d, dt); 
end
% save('var_k.mat', 'Y');

function make_video(title, Y,d, dt)

v = VideoWriter(title);
open(v);
figure('Position', [0,0,1280,640], 'visible', 'off')
for i=1:size(Y,1)
    if mod(i,floor(1/30/dt))==0
        
        subplot(1,2,1);
        hold on;
        
        plot(Y(1:i,1).*sin(Y(1:i,3)),-Y(1:i,1).*cos(Y(1:i,3)),'k');
        plot(-d:0.002:d,sqrt(d^2-(-d:0.002:d).^2),'b');
        plot(-d:0.002:d,-sqrt(d^2-(-d:0.002:d).^2),'b');
        xlim([-2,2])
        ylim([-3,1])
        grid on;
        hold off;
        
        
        subplot(1,2,2);
        hold on;
        plot(Y(1:i,1),Y(1:i,3),'k');
        xlim([-3,8])
        ylim([-2*pi, 2*pi])
        grid on
        hold off;
        frame = getframe(gcf);
        writeVideo(v,frame);
    end
end

close(v);
end

function [w,f_r,f_t,L] = sig_fft(Y, dt)
L = size(Y,1);
w = linspace(0,1/dt,floor(L/2));


f_r = fft(Y(:,1))/L;
f_r = f_r(1:floor(L/2));
f_r(2:end-1) = 2*f_r(2:end-1);

f_t = fft(Y(:,2))/L;
f_t = f_t(1:floor(L/2));
f_t(2:end-1) = 2*f_t(2:end-1);
end

function fft_plot(Y, title_fig, dt)
[w,f_r,f_t,L] = sig_fft(Y, dt);


subplot(2,1,1);
plot(w(2:floor(L/20)),abs(f_r(2:floor(L/20))));
title(title_fig);
xlabel('Frequency(Hz)');
ylabel('Amp');

subplot(2,1,2);
plot(w(1:floor(L/20)),abs(f_t(1:floor(L/20))));
xlabel('Frequency(Hz)');
ylabel('Amp');
end


function X=odefun(t, x, Up, g,m, b, dt)
% Up=@(s) k*(s-d).*heaviside(s-d);
X=zeros(4,1);
X(1)=x(2);
X(2)=x(1)*(x(4)^2)+g*cos(x(3))-Up(x(1))/m-b/m*x(2);
X(3)=x(4);
X(4)=-g*sin(x(3))/x(1) -2*x(2)*x(4)/x(1)-b/m*x(4)/x(1);

end