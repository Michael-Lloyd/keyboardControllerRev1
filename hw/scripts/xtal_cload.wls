#!/usr/bin/env wolframscript 

minPrecision=If[NumberQ[ArgPrecision], ArgPrecision, 4]; 
c0=Input["Enter shunt capacitance (pF): "];
cL = Input["Enter loading capacitance (pF): "];
prop=cL==(cL1*cL2)/(cL1+cL2)+c0;
res=Quiet@NMinimize[{(cL1*cL2)/(cL1+cL2)+c0,prop&&cL1==cL2&&cL1>0},{cL1,cL2},WorkingPrecision->4];
Print[
"\n\n---------------------------------------\n",
"Minimizing with <"<>ToString[minPrecision]<>"> Precision Units:\n",
ToString@InputForm[prop],
"\n\n---------------------------------------\n",
"Result: "<>ToString[res]]
