\name{calorias.diarias}
\alias{calorias.diarias}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calorias diarias}
\description{calorias diarias necesarias para una persona en funcion de su sexo, edad, peso, altura y actividad fisica}
\usage{
calorias.diarias(w, s, a)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{value}{w = Peso en kilogramos,  s= Estatura en centimetros, a = edad en anios }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Borja y Jorge  -- U-TAD -- 2019}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
Redondeo de las formulas de Harris-Benedict por Mifflin. 1990
  w = Peso en kilogramos 
  s= Estatura en centimetros 
  a = edad en anios 
  
  Hombres REE = 10 w + 6.25 s -5 a + 5 
  Mujeres REE = REE = 10 w + 6.25 s - 5 a - 161 
 

Sexo(M/F): M (masculino), F(femenino). Por ejmplo M.
Edad: numero de anios. Por ejemplo 50.
Altura: estatura en centimetros. 170.
Peso: peso en Kg. 70
Conoces la distancia y el tiempo de entrenamiento? (S/N)  
  - N: Ejercicio: Factor de actividad de acuerdo con Metodo Harris-Benedict. Por ejemplo 1.
  - S: Distancia(km), por ejemplo 10, Tiempo(minutos), por ejemplo 60. 
  Caminas o corres?(S/N), 
    Se calculan las calorias diarias con la regresion
       14,26 * tiempo(min) + 46,66 * km/h + 8,55 * peso(kg) - 1164,85
  Montas en bici?(S/N)
    Se utilizan METs (metabolic equivalent of task)
  Nadas?(S/N)
    Se utilizan METs (metabolic equivalent of task)
Quieres modificar tus calorias(S/N)? S

Puedes registrar tu perfil diariamente en la BBDD:
    -Si el usuario es nuevo y no esta registrado. Usuario Nuevo?(S/N) S
    -Usuario ya regfistrado. Modificar BBDD?(S/N) S
  
Quieres ver las calorias que quemarias en las diferentes actividades fisicas?(S/N)  S
    Se utilizan METs (metabolic equivalent of task) multiplicadas por el peso y tiempo de entrenamiento.
  
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{calorias.diarias}
