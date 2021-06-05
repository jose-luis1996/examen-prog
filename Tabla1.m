%Sonora tiene como un numero de identificacion el número 26 (idEstado)
%En seguida se da lectura el archivo .cvs el cual esta ubicada en la misma
%carpeta donde esta el código
%y se guarda en la tabla de datos denomidana 


tabla_datos = readtable('200511COVID19MEXICO.csv');
%A continuacion se encuentra la dimensio de la tabla

dimension= size(tabla_datos);

%De los cuales sólo se toma el valor el valor de las renglon
renglon= dimension(1,1);

%Se declaran los contadores i y j
j=1;
i=1;
%Recorro la tabla "tabla_datos"
while i<=renglon
    %Y Se compara el valor que contiene Estado_res con el número 26 para comprobar que estamos hablando del estado
    %de sonora
    if tabla_datos.ENTIDAD_RES(i)==26
            
            Fecha_actualizada(j,1)=tabla_datos.FECHA_ACTUALIZACION(i);
            Estado(j,1)=tabla_datos.ENTIDAD_RES(i);
            Fecha_fallecimiento(j,1)=tabla_datos.FECHA_DEF(i);
            Num_estado(j,1)=tabla_datos.ENTIDAD_UM(i);
            Inicio_sintomas(j,1)=tabla_datos.FECHA_SINTOMAS(i);
            j=j+1;
    end
        i=i+1;
    end


%A continuaciòn se crea una tabla solamente con la informaciòn respectiva de sonora
tabla_sonora=table(Fecha_actualizada, Num_estado, Estado, Inicio_sintomas, Fecha_fallecimiento);
%Fianlmente se crea el archivo "tabla1.csv"
writetable(tabla_sonora,'tabla1.csv')
