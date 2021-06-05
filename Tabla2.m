%De acuerdo a la informaciòn buscada
%se encontrò que el nùmero que identifica a cada estado es Sonora(26),  Nuevo León(19), Chihuahua(5), Puebla(21).
%Se lee el archivo .cvs
%y se almacena en tabla_datos
tabla_datos = readtable('200511COVID19MEXICO.csv');
%nuevamente se calcula la dimensiòn de la tabla
dimension= size(tabla_datos);
%Y lo importante es quedarse con el valor del renglon
renglon= dimension(1,1);


j=1;
n=1;
estado_=0;
% se utiliza un ciclo for para recorrer la tabla
for i=1:1:renglon
    %se compara que corresponda a los estados de chihuahua, nuevo leon, puebla y sonora.
    if tabla_datos.ENTIDAD_RES(i)==26 || tabla_datos.ENTIDAD_RES(i)==5 || tabla_datos.ENTIDAD_RES(i)==19 || tabla_datos.ENTIDAD_RES(i)==21  
            Fecha_ingreso(j,1)=tabla_datos.FECHA_INGRESO(i);
            Estado(j,1)=tabla_datos.ENTIDAD_RES(i);
            Inicio_sintomas(j,1)=tabla_datos.FECHA_SINTOMAS(i);
            j=j+1;
    end
end
    

%la tabla con la informaciòn es
tabla=table(Estado, Inicio_sintomas, Fecha_ingreso);
%Se crea el archivo "tabla1.csv"
writetable(tabla,'tabla2.csv')
