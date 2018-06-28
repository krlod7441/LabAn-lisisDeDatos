datos <- read.csv("./Escritorio/variables_PRE2.csv",header=TRUE, sep=";",dec=",")


#cambiar el tipo de dato a algunas variables
datos$rutcli = as.factor(conjunto$rutcli)
datos$Permanencia = as.factor(datos$Permanencia)
datos$rutcli = as.factor(datos$rutcli)
datos$ano = as.numeric(datos$ano)
datos$mes = as.numeric(datos$mes)
datos$ant_meses = as.numeric(datos$ant_meses)
datos$ejecutiva = as.factor(datos$ejecutiva)
datos$vendedor = as.factor(datos$vendedor)
datos$FacNetFac_.. = as.numeric(datos$FacNetFac_..)
datos$PRIMA = as.numeric(datos$PRIMA)
datos$EXTRA = as.numeric(datos$EXTRA)
datos$cantidad_transac = as.numeric(datos$cantidad_transac)
datos$monto_transac = as.numeric(datos$cantidad_transac)
datos$cantidad_solicitudes = as.numeric(datos$cantidad_solicitudes)
datos$suma_solicitudes = as.numeric(datos$suma_solicitudes)
datos$monto_pagado = as.numeric(datos$monto_pagado)
datos$monto_no_pagado = as.numeric(datos$monto_no_pagado)
datos$cantidad_no_pagado = as.numeric(datos$cantidad_no_pagado)
datos$cantidad_pagado = as.numeric(datos$cantidad_pagado)
datos$Fec_ing_Dia = as.numeric(datos$Fec_ing_Dia)
datos$Fec_ing_Mes = as.numeric(datos$Fec_ing_Mes)
datos$Fec_ing_Ano = as.numeric(datos$Fec_ing_Ano)

# Eliminar 1 de prima
datos<-datos[datos$PRIMA != 1,]


#############################flatering############## 

#variable ejecutiva 

datos$ejecutiva.CAROLINA_SEIG <- ifelse(datos$ejecutiva == 'CAROLINA.SEIGNOUREL',1,0)
datos$ejecutiva.MARIA_CASTILLO <- ifelse(datos$ejecutiva == 'MARIA.CASTILLO',1,0)
datos$ejecutiva.GERENCIA_RRPP <- ifelse(datos$ejecutiva == 'GERENCIA RR.PP.',1,0)
datos$ejecutiva.CARLA_BUZETA <- ifelse(datos$ejecutiva == 'CARLA.BUZETA',1,0)
datos$ejecutiva.CAROLINA_GONZALEZ <- ifelse(datos$ejecutiva == 'CAROLINA.GONZALEZ',1,0)
datos$ejecutiva.CAROLINA_MORA <- ifelse(datos$ejecutiva == 'CAROLINA.MORA',1,0)
datos$ejecutiva.LUZ.HERNA <- ifelse(datos$ejecutiva == 'LUZ.HERNANDEZ',1,0)
datos$ejecutiva.KATHIA_RAMIREZ <- ifelse(datos$ejecutiva == 'KATHIA.RAMIREZ',1,0)
datos$ejecutiva.MARCELA_BARRA <- ifelse(datos$ejecutiva == 'MARCELA.BARRA',1,0)
datos$ejecutiva.NO_ASIGNADO <- ifelse(datos$ejecutiva == 'NO ASIGNADO',1,0)
datos$ejecutiva.JIMENA_ROSALES <- ifelse(datos$ejecutiva == 'JIMENA.ROSALES',1,0)
datos$ejecutiva.MONICA_MELO <- ifelse(datos$ejecutiva == 'MONICA.MELO',1,0)
datos$ejecutiva.GONZALO_CATALAN <- ifelse(datos$ejecutiva == 'GONZALO CATALAN',1,0)
datos$ejecutiva.PAMELA_SABAT <- ifelse(datos$ejecutiva == 'PAMELA.SABAT',1,0)
datos$ejecutiva.EVELYN_MONCADA <- ifelse(datos$ejecutiva == 'EVELYN.MONCADA',1,0)
datos$ejecutiva.MARIA_CASTILLO <- ifelse(datos$ejecutiva == 'MARIA.CASTILLO',1,0)


#variable vendedor
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA.GARCIA',1,0)
datos$vendedor.ADRIAN_NORAMBUENA <- ifelse(datos$vendedor == 'ADRIAN.NORAMBUENA',1,0)
datos$vendedor.ALEJANDRO_CORREA <- ifelse(datos$vendedor == 'ALEJANDRO.CORREA',1,0)
datos$vendedor.ALEX_VERA <- ifelse(datos$vendedor == 'ALEX.VERA',1,0)
datos$vendedor.ALVARO_MARTINEZ <- ifelse(datos$vendedor == 'ALVARO.MARTINEZ',1,0)
datos$vendedor.ANDREA_FUENTES <- ifelse(datos$vendedor == 'ANDREA.FUENTES',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA GARCIA',1,0)






