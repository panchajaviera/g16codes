#Moidificado por Fran el 7 de octubre,2021
# writen on awk program language
# Archivo para extraer datos de energías obtenidos a partir de IOp (3/74)=-5

BEGIN{K=1}

{
  if($1=="ET=")
	{
	#print $2, $3, $5, $7, $9
	print $2, $4, $6, $8, $10
	}
}





