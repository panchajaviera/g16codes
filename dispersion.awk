#Moidificado por Fran el 7 de octubre,2021
# Para correr el programa:
# $ awk -f script.awk <archivo_de_entrada> archivo_de_salida
# Archivo para extraer datos de energias, orbitales moleculares frontera proveniente de Single Point

{
  if ($1=="R6Disp:" && $2=="Grimme-D3(BJ)") 
  {
  d3_bj=$5
  print d3_bj
  }

}






 


