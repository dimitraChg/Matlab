function[kontinosStathmos]= mystation()
%data
perioxes={'Athens','Kalamata','Thessalonica'};
stathmoi={'Hellinikon','Argostoli','Chania','Methoni','Larisa'};
sintentagmenesPer=[23.7167,37.9667,22.1167,37.0333,22.9000,40.6500];
sintentagmenesSt=[23.7333,37.8667,20.4833,38.1833,24.0167,35.5167,21.7000,36.8167,22.4167,39.6417];
%telos data
%eisagwgi perioxis
x=input('Εισάγετε τόπο καταγωγής(-1 για έξοδο): ');
if (x==-1)
        return
end
while (ismember(perioxes,x)==false)
    if (x==-1)
        return
    end
    x=input('Εισάγετε ξανά νέα περιοχή: ');
end
%telos eisagwgis perioxis
%epilogi stathmou me basi tin eukleideia aposstasi
if (strcmp(x,'Athens'))
   s=1;     
elseif(strcmp(x,'Kalamata'))
   s=3;     
else 
   s=5;
end
minApostasi = sqrt((sintentagmenesPer(s)-sintentagmenesSt(1))^2+(sintentagmenesPer(s+1)-sintentagmenesSt(2))^2 );
minI=1;
for i=3:2:9
    apostasi = sqrt((sintentagmenesPer(s)-sintentagmenesSt(i))^2+(sintentagmenesPer(s+1)-sintentagmenesSt(i+1) )^2 ); 
    if(minApostasi > apostasi)
        minApostasi =  apostasi;
        minI = i;
    end
end
disp('Ο κοντινότερος σταθμός από την περιοχή καταγωγής σας είναι')
kontinosStathmos =stathmoi((minI+1)/2);
disp(stathmoi((minI+1)/2))
%telos epilogis stathmou me basi tin eukleideia apostasi
end %telos function
