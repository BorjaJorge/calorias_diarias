
perfil.usuario <- function()
{

          library(sqldf)
          
          db <- dbConnect(SQLite(), dbname="perfil_insulina")

          unidades <- dbGetQuery(db, "select * from perfil_insulina") 

          library(DT)

          datatable(unidades, class = 'cell-border stripe', rownames = FALSE, 
                    caption = 'Perfil actual del usuario.')
   }
