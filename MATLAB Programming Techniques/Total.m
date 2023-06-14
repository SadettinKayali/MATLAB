mk=["Audi";"Ford";"Honda";"Toyota"];
md=["Q7";"Expedition";"Odyssey";"Prius"];
yr=[2018;2018;2018;2018];
tp=categorical(["SUV";"SUV";"minivan";"subcompact"]);

fleet=table(mk,md,yr,tp)
fleet = table(mk,md,yr,tp,'VariableNames',{'Make' 'Model' 'Year' 'Type'})
% fleet.Properties

mk2=["Toyota";"Volkswagen"];
md2=["Corolla";"Jetta"];
yr2=[2019;2019];
tp2=categorical(["compact";"compact"]);
fleet2019=table(mk2,md2,yr2,tp2);
fleet2019 = table(mk2,md2,yr2,tp2,'VariableNames',{'Make' 'Model' 'Year' 'Type'})

mk3=["Audi";"Ford";"Honda";"Toyota";"Toyota";"Volkswagen"];
md3=["Q7";"Expedition";"Odyssey";"Prius";"Corolla";"Jetta"];
% yr3=[2018;2018;2018;2018;2019;2019];
% tp3=categorical(["SUV";"SUV";"minivan";"subcompact";"compact";"compact"]);
we3=[2380;2619;2195;1252;1458;1584];
le3=[5025;5348;5164;4061;4373;4704];
wi3=[1956;2031;1963;1694;1770;1795];
sizeData=table(mk3,md3,we3,le3,wi3)
sizeData = table(mk3,md3,we3,le3,wi3,'VariableNames',{'Make' 'Model' 'Weight' 'Length' 'Width'})

[a,b,c,d] = convertCharsToStrings({'hello','world'},42,["this";"is";"text"],'so is this')