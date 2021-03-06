alimento.composicion <- function()
{

 print('1 - CEREALES')
 print('2 - LEGUMINOSAS') 
 print('3 - TUBERCULOS_HORTALIZAS') 
 print('4 - FRUTOS_FRESCOS') 
 print('5 - FRUTOS_SECOS') 
 print('6 - LACTEOS') 
 print('7 - HUEVOS') 
 print('8 - DULCES') 
 print('9 - ACEITES_GRASAS') 
 print('10 - PESCADOS') 
 print('11 - CERDO')
 print('12 - CORDERO') 
 print('13 - TERNERA') 
 print('14 - VACA')
 print('15 - EMBUTIDOS') 
 print('16 - AVES')  
 print('17 - CAZA')  
 
 n1<-readline(prompt="Introduce una opcion: ")
 
 while (n1 != 1 & n1 != 2 & n1 != 3 & n1 != 4 & n1 != 5 & n1 != 6 & n1 != 7 & n1 != 8 & n1 != 9 & n1 != 10 &
        n1 != 11 & n1 != 12 & n1 != 13 & n1 != 14 & n1 != 15 & n1 != 16 & n1 != 17)
   {
    n1<-readline(prompt="Introduce una opcion valida: ")
  }
 
# n1<-readline(prompt="Tipo de alimemento(CEREALES, LEGUMINOSAS, TUBERCULOS_HORTALIZAS, FRUTOS_FRESCOS,FRUTOS_SECOS, 
# LACTEOS, HUEVOS, DULCES, ACEITES_GRASAS, PESCADOS, CERDO, CORDERO, TERNERA, VACA, EMBUTIDOS, AVES, CAZA): ")
  
 library(sqldf)

 if  (n1 == 1)
       {
          db <- dbConnect(SQLite(), dbname="Cereales")
  
          nali<-readline(prompt="Cereales patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cereales where Cereales like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion cereales.', filter = 'top')
       }
 else if (n1 == 2)
       {
          db <- dbConnect(SQLite(), dbname="Leguminosas")
  
          nali<-readline(prompt="Leguminosas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Leguminosas where Leguminosas like ?", ali)

          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion leguminosas.', filter = 'top')
       } 
 else if (n1 == 3)
       {
          db <- dbConnect(SQLite(), dbname="Tuberculos_hortalizas")
  
          nali<-readline(prompt="Tuberculos/hortalizas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Tuberculos_hortalizas where Tuberculos_hortalizas like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Tuberculos y hortalizas.', filter = 'top')
       } 
 else if (n1 == 4)
       {
          db <- dbConnect(SQLite(), dbname="Frutos_frescos")
  
          nali<-readline(prompt="Frutos frescos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Frutos_frescos where Frutos_frescos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion frutos frescos.', filter = 'top')
       } 
 else if (n1 == 5)
       {
          db <- dbConnect(SQLite(), dbname="Frutos_secos")
  
          nali<-readline(prompt="Frutos secos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Frutos_secos where Frutos_secos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion frutos secos.', filter = 'top')
       } 
 else if (n1 == 6)
       {
          db <- dbConnect(SQLite(), dbname="Lacteos")
  
          nali<-readline(prompt="Lacteos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Lacteos where Lacteos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion lacteos.', filter = 'top')
       } 
 else if (n1 == 7)
       {
          db <- dbConnect(SQLite(), dbname="Huevos")
  
          nali<-readline(prompt="Huevos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Huevos where Huevos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion huevos.', filter = 'top')
       } 
 else if (n1 == 8)
       {
          db <- dbConnect(SQLite(), dbname="Dulces")
  
          nali<-readline(prompt="Dulces patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Dulces where Dulces like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion dulces.', filter = 'top')
       } 
 else if (n1 == 9)
       {
          db <- dbConnect(SQLite(), dbname="aceites_grasas")
  
          nali<-readline(prompt="Aceites/grasas patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from aceites_grasas where aceites_grasas like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion aceites y grasas.', filter = 'top')
       }  
 else if (n1 == 10)
       {
          db <- dbConnect(SQLite(), dbname="Pescados")
  
          nali<-readline(prompt="Pescados patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Pescados where Pescados like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion pescados.', filter = 'top')
       }  
 else if (n1 == 11)
       {
          db <- dbConnect(SQLite(), dbname="Cerdo")
  
          nali<-readline(prompt="Cerdo patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cerdo where Cerdo like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion cerdo.', filter = 'top')
       } 
 else if (n1 == 12)
       {
          db <- dbConnect(SQLite(), dbname="Cordero")
  
          nali<-readline(prompt="Cordero patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Cordero where Cordero like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion cordero.', filter = 'top')
       } 
 else if (n1 == 13)
       {
          db <- dbConnect(SQLite(), dbname="Ternera")
  
          nali<-readline(prompt="Ternera patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Ternera where Ternera like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion ternera.', filter = 'top')
       }  
 else if (n1 == 14)
       {
          db <- dbConnect(SQLite(), dbname="Vaca")
  
          nali<-readline(prompt="Vaca patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Vaca where Vaca like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion vaca.', filter = 'top')
       }  
 else if (n1 == 15)
       {
          db <- dbConnect(SQLite(), dbname="Embutidos")
  
          nali<-readline(prompt="Embutidos patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Embutidos where Embutidos like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion embutidos.', filter = 'top')
       }
 else if (n1 == 16)
       {
          db <- dbConnect(SQLite(), dbname="Aves")
  
          nali<-readline(prompt="Aves patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Aves where Aves like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion aves.', filter = 'top')
       }  
 else if (n1 == 17)
       {
          db <- dbConnect(SQLite(), dbname="Caza")
  
          nali<-readline(prompt="Caza patron de busqueda en MAYUSCULAS: " )
          ali <- paste('%', nali, '%',sep = '') 
          alimento <- dbGetQuery(db, "select * from Caza where Caza like ?", ali)
  
          n2<-readline(prompt="Cantidad en gramos?")
          n2<-as.integer(n2)
  
          alimento$Proteina <- as.integer(alimento$Proteina)
          alimento$Grasas <- as.integer(alimento$Grasas)
          alimento$Carbohidratos <- as.integer(alimento$Carbohidratos)  
  
          por = n2 / 100
  
          alimento$Calorias <- NULL
          alimento$Proteina_calorias <- alimento$Proteina * por * 4
          alimento$Grasas_calorias <- alimento$Grasas * por * 9
          alimento$Carbohidratos_calorias<- alimento$Carbohidratos * por * 4
          alimento$Carbohidratos_gramos<- alimento$Carbohidratos * por  
          alimento$FII_food_insuline_index<- 10.4 + alimento$Carbohidratos * por + 0.4 * alimento$Proteina * por 
          alimento$Agua <- NULL
          alimento$Cenizas <- NULL
          alimento$Proteina <- NULL
          alimento$Grasas <- NULL
          alimento$Carbohidratos <- NULL
  
          library(DT)
          datatable(alimento, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Composicion caza.', filter = 'top')
       }   
}
