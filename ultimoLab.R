datos <- read.csv("./Escritorio/variables_PRE_fecha_balanceado.csv",header=TRUE, sep=";",dec=",")


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
datos$ejecutiva.LUZ_HERNA <- ifelse(datos$ejecutiva == 'LUZ.HERNANDEZ',1,0)
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

datos$vendedor.VICTOR_FIGUEROA  <- ifelse(datos$vendedor == 'VICTOR FIGUEROA',1,0)
datos$vendedor.VANESSA_MANDIOLA <- ifelse(datos$vendedor == 'VANESSA.MANDIOLA',1,0)
datos$vendedor.TELE_VENTAS <- ifelse(datos$vendedor == 'TELE.VENTAS',1,0)
datos$vendedor.TATIANA_SANMARTIN<- ifelse(datos$vendedor == 'TATIANA.SANMARTIN',1,0)
datos$vendedor.SERGIO_VILLAROELZ <- ifelse(datos$vendedor == 'SERGIO.VILLAROEL',1,0)
datos$vendedor.RODRIGO_NOVA <- ifelse(datos$vendedor == 'RODRIGO.NOVA',1,0)
datos$vendedor.ARODRIGO_ARP<- ifelse(datos$vendedor == 'RODRIGO.ARP',1,0)
datos$vendedor.ARAUL_HERNANDEZ  <- ifelse(datos$vendedor == 'RAUL.HERNANDEZ',1,0)
datos$vendedor.PATRICIO_CARRANZA  <- ifelse(datos$vendedor == 'PATRICIO.CARRANZA',1,0)
datos$vendedor.APATRICIO_SAN_MARTIN <- ifelse(datos$vendedor == 'PATRICIO SAN MARTIN',1,0)
datos$vendedor.NO_ASIGNADO  <- ifelse(datos$vendedor == 'NO ASIGNADO',1,0)
datos$vendedor.MONICA_MELO <- ifelse(datos$vendedor == 'MONICA.MELO',1,0)
datos$vendedor.MIGUEL_MENESES <- ifelse(datos$vendedor == 'MIGUEL.MENESES',1,0)
datos$vendedor.MARTA_METRENCKO <- ifelse(datos$vendedor == 'MARTA.METRENCKO',1,0)
datos$vendedor.MARLENE_SAGAL <- ifelse(datos$vendedor == 'MARLENE SAGAL',1,0)
datos$vendedor.MARIO_OSORIO <- ifelse(datos$vendedor == 'MARIO.OSORIO',1,0)
datos$vendedor.MARIO_ARAVENA <- ifelse(datos$vendedor == 'MARIO.ARAVENA',1,0)
datos$vendedor.MARCELO_ROBLES <- ifelse(datos$vendedor == 'MARCELO ROBLES',1,0)
datos$vendedor.MARCELA_SALAS <- ifelse(datos$vendedor == 'MARCELA SALAS',1,0)
datos$vendedor.M_ANGELICA_HERNANDEZ <- ifelse(datos$vendedor == 'M.ANGELICA HERNANDEZ',1,0)
datos$vendedor.LUIS_BRAVO <- ifelse(datos$vendedor == 'LUIS_BRAVO',1,0)
datos$vendedor.LORENA_CONTRERAS <- ifelse(datos$vendedor == 'LORENA.CONTRERAS',1,0)
datos$vendedor.JUAN_VALDES <- ifelse(datos$vendedor == 'JUAN.VALDES',1,0)
datos$vendedor.JUAN_PONCE <- ifelse(datos$vendedor == 'JUAN.PONCE',1,0)
datos$vendedor.JUAN_LUEJE <- ifelse(datos$vendedor == 'JUAN.LUEJE',1,0)
datos$vendedor.JORGE_ZAMORANO <- ifelse(datos$vendedor == 'JORGE.ZAMORANO',1,0)
datos$vendedor.JORGE_CARRASCO <- ifelse(datos$vendedor == 'JORGE.CARRASCO',1,0)
datos$vendedor.IVONNE_MORALES <- ifelse(datos$vendedor == 'IVONNE.MORALES',1,0)
datos$vendedor.HERNAN_MIRANDA <- ifelse(datos$vendedor == 'HERNAN.MIRANDA',1,0)
datos$vendedor.GUNTHER_BERBELAGUA <- ifelse(datos$vendedor == 'GUNTHER.BERBELAGUA',1,0)
datos$vendedor.GUILLERMINA_IBIETA <- ifelse(datos$vendedor == 'GUILLERMINA.IBIETA',1,0)
datos$vendedor.GERMAN_SILVA <- ifelse(datos$vendedor == 'GERMAN.SILVA',1,0)
datos$vendedor.GERENCIA_CLIENTES <- ifelse(datos$vendedor == 'GERENCIA CLIENTES',1,0)
datos$vendedor.GERARDO_REVECO <- ifelse(datos$vendedor == 'GERARDO.REVECO',1,0)
datos$vendedor.GERALDINE_IBACETA <- ifelse(datos$vendedor == 'GERALDINE.IBACETA',1,0)
datos$vendedor.GABRIEL_JARA <- ifelse(datos$vendedor == 'GABRIEL.JARA',1,0)
datos$vendedor.FELIPE_MEDINA <- ifelse(datos$vendedor == 'FELIPE.MEDINA',1,0)
datos$vendedor.FABIOLA_LOBOS <- ifelse(datos$vendedor == 'FABIOLA.LOBOS',1,0)
datos$vendedor.ENRIQUE_MORAN <- ifelse(datos$vendedor == 'ENRIQUE MORAN',1,0)
datos$vendedor.EDUARDO_ZUNIGA <- ifelse(datos$vendedor == 'EDUARDO.ZUNIGA',1,0)
datos$vendedor.DANIEL_PEREZ <- ifelse(datos$vendedor == 'DANIEL.PEREZ',1,0)
datos$vendedor.DANIEL_GUTIERREZ <- ifelse(datos$vendedor == 'DANIEL.GUTIERREZ',1,0)
datos$vendedor.CRISTIAN_YEVENES <- ifelse(datos$vendedor == 'CRISTIAN.YEVENES',1,0)
datos$vendedor.CRISTIAN_ARRIAGADA <- ifelse(datos$vendedor == 'CRISTIAN ARRIAGADA',1,0)
datos$vendedor.CLAUDIO_TAPIA <- ifelse(datos$vendedor == 'CLAUDIO.TAPIA',1,0)
datos$vendedor.CLAUDIA_VEAS <- ifelse(datos$vendedor == 'CLAUDIA.VEAS',1,0)
datos$vendedor.CLAUDIA_PARRA <- ifelse(datos$vendedor == 'ACLAUDIA.PARRA',1,0)
datos$vendedor.CESAR_LOPEZ <- ifelse(datos$vendedor == 'CESAR LOPEZ',1,0)
datos$vendedor.CAMILO_DIAZ <- ifelse(datos$vendedor == 'ACAMILO DIAZ',1,0)
datos$vendedor.CAMILA_RAMOS <- ifelse(datos$vendedor == 'CAMILA.RAMOS',1,0)
datos$vendedor.BLANCA_ASTUDILLO <- ifelse(datos$vendedor == 'BLANCA.ASTUDILLO',1,0)
datos$vendedor.BERTA_GUERRERO <- ifelse(datos$vendedor == 'BERTA.GUERRERO',1,0)
datos$vendedor.ANGELICA_PONCE <- ifelse(datos$vendedor == 'ANGELICA.PONCE',1,0)
datos$vendedor.ANDRES_REYES <- ifelse(datos$vendedor == 'ANDRES.REYES',1,0)
datos$vendedor.ANDREA_RAMIREZ <- ifelse(datos$vendedor == 'ANDREA.RAMIREZ',1,0)
datos$vendedor.ALVARO_MARTINEZ <- ifelse(datos$vendedor == 'ALVARO.MARTINEZ',1,0)
datos$vendedor.ALEX_VERA <- ifelse(datos$vendedor == 'ALEX.VERA',1,0)
datos$vendedor.ALEJANDRO_CORREA <- ifelse(datos$vendedor == 'ALEJANDRO.CORREA',1,0)
datos$vendedor.ADRIAN_NORAMBUENA <- ifelse(datos$vendedor == 'ADRIAN NORAMBUENA',1,0)
datos$vendedor.ADA_GARCIA <- ifelse(datos$vendedor == 'ADA.GARCIA',1,0)




########################################NORMALIZACION################


#NORMALIZACION DE ano
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$ano
#normalizaci?n de la variable 
datos$ano = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE mes
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$mes
#normalizaci?n de la variable 
datos$mes = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE ant_meses
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$ant_meses
#normalizaci?n de la variable 
datos$ant_meses = ((x)-min(x))/(max(x)-min(x))



#NORMALIZACION DE fac_net_fac
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$FacNetFac_..
#normalizaci?n de la variable 
datos$FacNetFac_.. = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE PRIMA
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$PRIMA
#normalizaci?n de la variable 
datos$PRIMA = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE extra
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$EXTRA
#normalizaci?n de la variable 
datos$EXTRA = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE cantidad_transc
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$cantidad_transac
#normalizaci?n de la variable 
datos$cantidad_transac = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE monto_trans
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$monto_transac
#normalizaci?n de la variable 
datos$monto_transac = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE fec_ing_dia
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$Fec_ing_Dia
#normalizaci?n de la variable 
datos$Fec_ing_Dia = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE fec_ing_mes
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$Fec_ing_Mes
#normalizaci?n de la variable 
datos$Fec_ing_Mes = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE fec_ing_ano
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$Fec_ing_Ano
#normalizaci?n de la variable 
datos$Fec_ing_Ano = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE cantidad_solicitudes
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$cantidad_solicitudes
#normalizaci?n de la variable 
datos$cantidad_solicitudes = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE suma_solicitudes
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$suma_solicitudes
#normalizaci?n de la variable 
datos$suma_solicitudes = ((x)-min(x))/(max(x)-min(x))


#NORMALIZACION DE monto_pagado
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$monto_pagado
#normalizaci?n de la variable 
datos$monto_pagado = ((x)-min(x))/(max(x)-min(x))



#NORMALIZACION DE monto_no_pagado
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$monto_no_pagado
#normalizaci?n de la variable 
datos$monto_no_pagado = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE cantidad_pagado
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$cantidad_pagado
#normalizaci?n de la variable 
datos$cantidad_pagado = ((x)-min(x))/(max(x)-min(x))

#NORMALIZACION DE cantidad_no_pagado
#cambio a una variable temporal s?lo para la normalizaci?n
x = datos$cantidad_no_pagado
#normalizaci?n de la variable 
datos$cantidad_no_pagado = ((x)-min(x))/(max(x)-min(x))




###analisis de agrupamiento

library(cluster)
library(factoextra)
#fviz_nbclust(x = bank_mark, FUNcluster = pam, method = "silhouette",     diss = dist(bank_mark,method="euclidean"))


  #definicion de cantidad de cluster manual


#################################


data_nor<-as.data.frame(scale(datos))

#distancia euclideana
distancia1<-dist(datos,method="euclidean")

resultado_hclus=hclust(distancia1)
print(resultado_hclus)

plot(resultado_hclus, col='blue')


hierarchical.clustering <- hclust(as.dist(distancia1))

hclust.2 <- cutree(hierarchical.clustering,k=2)
hclust.3 <- cutree(hierarchical.clustering,k=3)
hclust.4 <- cutree(hierarchical.clustering,k=4)
hclust.5 <- cutree(hierarchical.clustering,k=5)
hclust.6 <- cutree(hierarchical.clustering,k=6)
hclust.7 <- cutree(hierarchical.clustering,k=7)
hclust.8 <- cutree(hierarchical.clustering,k=8)
hclust.9 <- cutree(hierarchical.clustering,k=9)
hclust.10 <- cutree(hierarchical.clustering,k=10)

pam.2 <- pam(as.dist(distancia1),k=2,diss=TRUE)
pam.3 <- pam(as.dist(distancia1),k=3,diss=TRUE)
pam.4 <- pam(as.dist(distancia1),k=4,diss=TRUE)
pam.5 <- pam(as.dist(distancia1),k=5,diss=TRUE)
pam.6 <- pam(as.dist(distancia1),k=6,diss=TRUE)
pam.7 <- pam(as.dist(distancia1),k=7,diss=TRUE)
pam.8 <- pam(as.dist(distancia1),k=8,diss=TRUE)
pam.9 <- pam(as.dist(distancia1),k=9,diss=TRUE)
pam.10 <- pam(as.dist(distancia1),k=10,diss=TRUE)


sil2 <- silhouette(hclust.2,dist=distancia1)
sil3 <- silhouette(hclust.3,dist=distancia1)
sil4 <- silhouette(hclust.4,dist=distancia1)
sil5 <- silhouette(hclust.5,dist=distancia1)
sil6 <- silhouette(hclust.6,dist=distancia1)
sil7 <- silhouette(hclust.7,dist=distancia1)
sil8 <- silhouette(hclust.8,dist=distancia1)
sil9 <- silhouette(hclust.9,dist=distancia1)
sil10 <- silhouette(hclust.10,dist=distancia1)

hclust.sil.values <- c(summary(sil2)[["avg.width"]],summary(sil3)[["avg.width"]],summary(sil4)[["avg.width"]],summary(sil5)[["avg.width"]],summary(sil6)[["avg.width"]],summary(sil7)[["avg.width"]],summary(sil8)[["avg.width"]],summary(sil9)[["avg.width"]],summary(sil10)[["avg.width"]])

sil2 <- silhouette(pam.2)
sil3 <- silhouette(pam.3)
sil4 <- silhouette(pam.4)
sil5 <- silhouette(pam.5)
sil6 <- silhouette(pam.6)
sil7 <- silhouette(pam.7)
sil8 <- silhouette(pam.8)
sil9 <- silhouette(pam.9)
sil10 <- silhouette(pam.10)

pam.sil.values <- c(summary(sil2)[["avg.width"]],summary(sil3)[["avg.width"]],summary(sil4)[["avg.width"]],summary(sil5)[["avg.width"]],summary(sil6)[["avg.width"]],summary(sil7)[["avg.width"]],summary(sil8)[["avg.width"]],summary(sil9)[["avg.width"]],summary(sil10)[["avg.width"]])


plot(sil2,main="Silueta PAM 2",border="blue")
summary(sil2)
plot(sil3,main="Silueta PAM 3",border="blue")
summary(sil3)
plot(sil4,main="Silueta PAM 4",border="blue")
summary(sil4)
plot(sil5,main="Silueta PAM 5",border="blue")
summary(sil4)
plot(sil6,main="Silueta PAM 6",border="blue")
summary(sil4)
plot(sil7,main="Silueta PAM 7",border="blue")
summary(sil4)

#mostrar el grafico....

plot(2:10,pam.sil.values[2:10],type="o",col="blue",pch=0,xlab="Number of clusters",ylab="Mean Silhouette")
#lines(2:10,hclust.sil.values[2:10],type="o",col="red",pch=1,xlab="",ylab="")
#legend("topright",legend=c("PAM","HCLUST"),col=c("blue","red"),pch=c(0,1))
legend("topright",legend=c("PAM"),col=c("blue"),pch=c(0,1))

#mostrar el cluster
clusplot(pam.2,color="TRUE")


