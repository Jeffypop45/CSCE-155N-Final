# CSCE-155N-Final
Final Project for CSCE 155N
Contained here are two different matlab.m files named FinalProject and Final2.
FinalProject contains a function to plot PowerTrain Propulsion Efficiency as a function of Power being put in.
Final2 contains a function to plot the Endurance of a Gas Engine given a Fuel Capacity Range.

We will begin with file Final Project.
1st, we are told that we need to present this as a function as opposed to a script.
Lets set this up as a function.  Our first line should start out as

function

Next, we need to give a name to our function, so after function we will name it
function PowerTrainPropulsion

Next, we need an equal sign, and we will name our other side PowerVsEfficiency.
So far we should have

function PowerTrainPropulsion=PowerVsEfficiency

Next, on the right hand side in parenthesis, we need to include all our variables we are given in this file.
The variables we are given are PowerIn, three constants C0,C1,C2, PowerLoss, PowerOut, and Efficiency.
Before we write these, we will make some adjustments.

PowerIn will be represented as Pin; PowerLoss will be Ploss; PowerOut will be Pout, and Efficiency will be Y.
We can now finish our first line by including all our variables as such

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Now, we will start to give values to our variables listed in the function line, in the same order we listed them.
We were given the following values:  Pin=[0,125]; C0=.6; C1=.02; C2=.0015; We will list each of these values seperately in this same order on new lines for each one, each line ending in a semicolon ;. We will edit Pin a little bit, and change it to [0:1:125].  This change changes it from 2 distinct values, into an array that includes values 0 all the way to 125, incremented 1 at a time.
We should now have 

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Next we will include the equation for Ploss, which needs some work done to it.  We are given Ploss=C0 + C1*Pin + C2*Pin^2
However, Matlab is a little funky when multiplying and squaring two variables, and you need to use a period (.) to seperate each variable.
We will change this to Ploss=C0 + C1.*Pin + C2.*Pin.^2.
We now have 

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Next, we include the equation for Pout, which is given to us as Pout=Pin-Ploss.

Now

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Next we include our variable Y, which represents Efficiency, and is given as Y=Pout/Pin.  Again we need to edit this and include a period(.) before the division symbol.

Y=Pout./Pin

We now have 

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Y=Pout./Pin;

 We now are done listing all our variables.  Next step is to set this up in a way that Matlab will plot a graph of what we want.
 
The graph we want is PowerVsEfficiency, which will include Power on the x Axis and Efficiency on the Y axis.
 
To do this, we first need to set what we want x and y to represent.  
 
To do so, we will set x=Pin, and y=Y.

Putting this together,, we now have

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Y=Pout./Pin;

x=Pin;

y=Y;

Next we follow this up with plot(x,y).  What this does is, is tell Matlab that we want to make a plot or graph of our listed x and y values.

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Y=Pout./Pin;

x=Pin;

y=Y;

plot(x,y);

The last steps are to include what we want to name our Xaxis, Y axis, and title of our graph.

To do this we can use xlabel, ylabel and title. 

We will write out for example, xlabel, then follow it immediately with('').  Inside the two hyphens, we write out what we want to display on our graph.

We will name these

xlabel('Power In (kW)'); ylabel('Efficiency (%, 1=100%)'); title('Efficiency Vs Power')

We can now include these individually with the rest of our information

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Y=Pout./Pin;

x=Pin;

y=Y;

plot(x,y);

xlabel('Power In (kW)');

ylabel('Efficiency (%, 1=100%)'); 

title('Efficiency Vs Power');

We are now done with our function, so we can write 'end', to tell Matlab that the function is done. 

This will be our finished product

function PowerTrainPropulsion=PowerVsEfficiency(Pin,C0,C1,C2,Ploss,Pout,Y)

Pin=[0:1:125];

C0=.6;

C1=.02;

C2=.0015;

Ploss=C0 + C1.*Pin + C2.*Pin.^2;

Pout=Pin-Ploss;

Y=Pout./Pin;

x=Pin;

y=Y;

plot(x,y);

xlabel('Power In (kW)');

ylabel('Efficiency (%, 1=100%)'); 

title('Efficiency Vs Power');

end

This function and file is now completely done, and in Matlab, we can click 'Run', and we will be given a graph, as well as our values for efficiency.  







Now for the second file, Final2.
The set up for this will be pretty much the exact same approach as the 1st file, except we will have different function names, different variables, and a different plot to graph.

We can start with function again, like before, but this time, we will change the name after, and the names and variables on the right hand side of the equation.
On the left, we will have function GasEngineRange.
On the right, we will name it FuelCapacityVsEndurance, as this is what we will be plotting when done.  
In this, we are given variables Engine Power, Gasoline energy, Thermal Efficiency, fuel Capacity, Fuel Flow, and Endurance.
However, we will rename these variables as follows
Engine Power=P; Gasoline energy=Eg;Thermal Efficiency=TE; fuel Capacity= Cf; Fuel Flow= Rf; and Endurance=X
We can now state our function line as
function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)

Next, based off of the values we were given in the instructions for each variable, we will include each variable seperately, seperated by line and semicolon 
We are given that P=298 kW.  We will not include kW's however, as our final graph will state that the units are kW.
We are also given Eg=8.8kWh/l.  Again we will ignore units.  We will ignore all units until the end.
We are given that TE=.25
For Cf, we are given [25,100]  However, our instructions state that they want this converted from to seperate values, to an array containing all values inbetween, moving up in value one at a time.  So we will rewrite this as [25:1:100].  The 1 in the middle, says we are incrementing 1 at a time.
Before we get too far, lets put all this together
So we now have

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];

Next we are given that Rf=P/(Eg*TE).  We will need to rewrite this as we did in the first file, with a period(.) coming inbetween all variables and (multiplication/division signs).  This we turn into Rf=P./(Eg.*TE).
Lets now include this on our next line

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);

Next, we are given that X=Cf/Rf.  Again using a period inbetween, we can rewrite this as
X=Cf./Rf.
Lets now include this

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);
X=Cf./Rf;

% We now are done listing all our variables.  Next step is to set this up in a way that Matlab will plot a graph of what we want.
% The graph we want is FuelCapacityVsEndurance, which will include FuelCapacity on the x Axis and Enurance on the Y axis.
% To do this, we first need to set what we want x and y to represent.  
% To do so, we will set x=Cf, and y=X.
%Putting this together, we now have

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);
X=Cf./Rf;
x=Cf;
y=X;

Next we will include plot(x,y).  This tells Matlab that we want to plot a graph of our x and y chosen values.
So now we have

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);
X=Cf./Rf;
x=Cf;
y=X;
plot(x,y);

The last steps are to include what we want to name our Xaxis, Y axis, and title of our graph.
To do this we can use xlabel, ylabel and title. 
We will write out for example, xlabel, then follow it immediately with('').  Inside the two hyphens, we write out what we want to display on our graph.
We will name these
xlabel('Fuel Capacity (Liters)'); ylabel('Endurance'); title('Endurance as a function of Fuel Capacity')
We can now include these individually with the rest of our information

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);
X=Cf./Rf;
x=Cf;
y=X;
plot(x,y);
xlabel('Fuel Capacity(Liters)');
ylabel('Endurance');
title('Endurance as a function of Fuel Capacity');

We are now done with all our information and can just put an 'end' to end the function

function GasEngineRange= FuelCapacityVsEndurance(P,Eg,TE,Cf,Rf,X)
P=298;
Eg=8.8;
TE=.25;
Cf=[25:1:100];
Rf=P./(Eg.*TE);
X=Cf./Rf;
x=Cf;
y=X;
plot(x,y);
xlabel('Fuel Capacity(Liters)');
ylabel('Endurance');
title('Endurance as a function of Fuel Capacity');
end

This is our finished product.  We can then tell Matlab to run it, and it will plot a graph of the information we gave it.  










