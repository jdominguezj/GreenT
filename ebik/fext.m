data=readtable("20190328112214-09036_prof1.csv");
data=data(:,6:7);
data2=(table2array(data));
vel=str2double(data2(:,1));
slope=str2double(data2(:,2));
time=0:length(vel);
d1=[time(1:end-1);vel'];
d2=[time(1:end-1);slope'];

%Print vectors to send to OpenModelica
form='%10.2f,%10.2f;';
sprintf(form,d1)
sprintf(form,d2)
