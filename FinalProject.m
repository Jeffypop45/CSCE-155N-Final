function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)
Pin=[0:1:125]; %Power In in kiloWatts.
C0= .6; %Given Constant.
C1= .02; %Given Constant.
C2= .0015; %Given Constant.
Ploss=C0 + C1.*Pin + (C2.*(Pin.^2)); %Equation to calculate the power lost by using the given constants and the Power being put in.
Pout=Pin-Ploss; % Formula to calculate the Power that will be put out.
Y=Pout./Pin  % Formula for efficiency(Y).
x=Pin; % What will be used on our x axis.
y=Y; %What will be used on our y axis.
plot(x,y);  %Makes a x,y plot of the assigned x,y values.
xlabel('Power In (kW)');  %What we want our x axis to be named.
ylabel('Efficiency (%, 1=100%)'); %What we want our y axis to be named.
title('Efficiency vs Power'); %What we want to title our graph.
end

