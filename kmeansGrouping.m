function[hum,maxtemp]=kmeansGrouping()
kontinosStathmos = mystation;
if(strcmp(kontinosStathmos,'Hellinikon'))
    pinakas1=dlmread('hum_Hellinikon.txt',',',1,1);
    pinakas1(:,3)=[];
    axisX=pinakas1(:,1)
    hum=pinakas1(:,2)
    pinakas2=dlmread('maxtemp_Hellinikon.txt',',',1,1);
    pinakas2(:,3)=[];
    xAxis=pinakas2(:,1)
    maxtemp=pinakas2(:,2);
elseif(strcmp(kontinosStathmos,'Argostoli'))
    pinakas3=dlmread('hum_Argostoli.txt',',',1,1);
    pinakas3(:,3)=[];
    axisX=pinakas3(:,1)
    hum=pinakas3(:,2)
    pinakas4=dlmread('maxtemp_Argostoli.txt',',',1,1);
    pinakas4(:,3)=[];
    xAxis=pinakas4(:,1)
    maxtemp=pinakas4(:,2)
elseif(strcmp(kontinosStathmos,'Chania'))
    pinakas5=dlmread('hum_Chania.txt',',',1,1);
    pinakas5(:,3)=[];
    axisX=pinakas5(:,1)
    hum=pinakas5(:,2)
    pinakas6=dlmread('maxtemp_Chania.txt',',',1,1);
    pinakas6(:,3)=[];
    xAxis=pinakas6(:,1)
    maxtemp=pinakas6(:,2)
elseif(strcmp(kontinosStathmos,'Methoni'))
    pinakas7=dlmread('hum_Methoni.txt',',',1,1);
    pinakas7(:,3)=[];
    axisX=pinakas7(:,1)
    hum=pinakas7(:,2)
    pinakas8=dlmread('maxtemp_Methoni.txt',',',1,1);
    pinakas8(:,3)=[];
    xAxis=pinakas8(:,1)
    maxtemp=pinakas8(:,2)
elseif(strcmp(kontinosStathmos,'Larisa'))
    pinakas9=dlmread('hum_Larisa.txt',',',1,1);
    pinakas9(:,3)=[];
    axisX=pinakas9(:,1)
    hum=pinakas9(:,2)
    pinakas10=dlmread('maxtemp_Larisa.txt',',',1,1);
    pinakas10(:,3)=[];
    xAxis=pinakas10(:,1)
    maxtemp=pinakas10(:,2)
end
pinakasZeugwn=[hum',maxtemp'];
size(pinakasZeugwn)
clusters=kmeans(pinakasZeugwn,5)
plot(clusters(:,1),'b.')
hold on
plot(clusters(:,2),'r.')
hold on
plot(clusters(:,3),'g.')
hold on
plot(clusters(:,4),'k.')
hold on
plot(clusters(:,5),'y.')
hold off
title('�� ������� ������������ ��� �� hum ��� �� maxtemp')
xlablel('omades')
ylabel('�� ����� ��� hum ��� maxtemp')
legend('�����������')
end
