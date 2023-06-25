#Modificado por Fran el 19 de octubre de 2021

#Archivo para extraer datos de NBO proveniente de calculos Single Point
#CUIDADO!: SI SE EMPLEO NOSYMM, ENTONCES SE DEBE CAMBIAR Standard orientation por Input orientation

{

  if ($1=="SCF" && $2=="Done:" ) {

  energy=$5}

#  if ($1=="E2" && $2=="=" && $4=="EUMP2" && $5=="=") {

# energy=$6 }

#  if ( $1=="Wiberg" && $2=="bond" && $3=="index" && $4=="matrix") {
   if ( $4=="Mayer" && $5=="Atomic" && $6=="Bond" && $7=="Orders:") {

  getline

#   getline

#     getline

	getline

#	pobla12=$4
#	pobla13=$5
#	pobla14=$6
#	pobla15=$7
#	pobla16=$8

	getline

#	pobla23=$5
#	pobla24=$6
#	pobla25=$7
#	pobla26=$8

	getline

#	pobla34=$6
#	pobla35=$7
#	pobla36=$8

	getline

	pobla45=$7
	pobla46=$8

	getline

	pobla56=$8  

	getline

getline



 { j++

#  printf "%-5s %-5s %-18s %+2s %-10s %+2s %-10s %+2s %-10s %+2s %-10s %+2s %-10s %+2s %-10s %+2s %-10s %+2s%%-10s %+2s%-10s %+2s % %s\n", 

print j, pobla45, pobla46, pobla56    

  }

  }

 } 



