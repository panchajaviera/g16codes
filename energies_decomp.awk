#Moidificado por Fran el 7 de octubre,2021
# Para correr el programa:
# $ awk -f script.awk <archivo_de_entrada> archivo_de_salida
# Archivo para extraer datos de energias, orbitales moleculares frontera proveniente de Single Point

BEGIN{K=1}

{
  if($1=="ET=")
	{
	#print $2, $3, $5, $7, $9
	print $2, $4, $6, $8, $10
	}
}





