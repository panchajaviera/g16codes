# writen on awk program language
# Archivo para extraer datos de energía de dispersión de sp_generator o sp_generator_counterpoise
# Modified by fjbenitez@uc.cl
#

{
  if ($1=="R6Disp:" && $2=="Grimme-D3(BJ)") 
  {
  d3_bj=$5
  print d3_bj
  }

}






 


