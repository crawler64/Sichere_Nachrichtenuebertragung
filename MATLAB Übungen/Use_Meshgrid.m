clear all;
close all;

dx=0.5;
N=1000000;


xmin=-15; xmax=15;
% Vorsicht, wenn normalver. Gleichungen gr��er,kleiner
% xmin,xmax werden


x=(xmin:dx:xmax);
y=x;

% X und Y erzeugen das "meshgrid" f�r 3-D Plots:
[X,Y]=meshgrid(x,y);

%% kurze Info 
Z=X.^2+Y
surf(X,Y,Z)

%% Zufallsgr�ssen erzeugen und manipulieren:

z=3*randn(2,N); %ergibt 2-dim Vektor der L�nge N, Gaussverteilt

% Statistische Bindung einbinden
%z(2,:)=0.5*z(2,:);

%z(2,:)=0.5*z(1,:)+1+0.2*z(2,:); % korrelierte Gr��e

%z(2,:)=0.5*z(1,:)+3*sin(z(1,:)); % korrelierte Gr��e

%z(2,:)=0.05*z(1,:).^2 +0.6*z(2,:);

wdf3d=zeros(length(x),length(y));

%Histogramm-Erstellung:

for i=1:N;
        i1=(z(1,i)-xmin)/dx;
        i2=(z(2,i)-xmin)/dx;       %zweite ZG = W2
        
        i1=round(i1); i2=round(i2);
        i1=max([i1,1]); i1=min([i1,length(x)]);
        i2=max([i2,1]); i2=min([i2,length(x)]);
        
        wdf3d(i1,i2)=wdf3d(i1,i2)+1;
end

wdf3d=wdf3d/N/dx/dx;        %Normierung

figure;

plot(z(1,:),z(2,:),'x');
axis([xmin xmax xmin xmax]);

figure;
mesh(Y,X,wdf3d); title ('WDF fxy (epislon, theta)');
figure;
contour(Y,X,wdf3d); title('WDF H�henlinien');
figure;

wvf3d=dx*cumsum(wdf3d,1);
wvf3d=dx*cumsum(wdf3d,2);

mesh(X,Y,wvf3d); title('WVF');
xlabel('\xi'); ylabel('\eta');
        
        
        
        