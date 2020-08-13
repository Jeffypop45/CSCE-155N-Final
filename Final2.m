function GasEngineRange=FuelCapacityVsEndurance(P,Eg,Te,Cf,Rf,X)
P=298;% Engine Power value given (kW).

Eg=8.8; %Gasoline Energy (kWh/liter).

TE=.25; %Thermal Efficiency.

Cf=[25:100];%Fuel Capacity (Liters).

Rf=P./(Eg.*TE); %Rf=Fuel Flow,  this is determined by taking the Engine 
                %Power, and dividing it by the product of Thermal
                %Efficiency and Gasoline Energy.

X=Cf./Rf;   %X is the variable for Endurance.  This is found by dividing 
            %the Fuel Capacity by the Fuel Flow.

x=Cf; %Here we list what we want to be represtened by x on our graph.

y=X;  %Here we list what we want to be represented by y on our graph.

plot(x,y); % By using this plot command, we are telling Matlab to plot our 
           %chosen x and y values.

xlabel('Fuel Capacity (Liters)'); %What do we want to name our xAxis?

ylabel('Endurance'); %What do we want to name our yAxis?

title('Endurance as a function of fuel capacity'); %Name for our graph.
end