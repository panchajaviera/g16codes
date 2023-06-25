#Archivo para obtener datos estructurales
# Hecho por Fran el 19 de enero, 2022

{

	if ($1=="SCF" && $2=="Done:") {
		energy=$5

}


if ($1=="--" && $2=="Stationary" && $3=="point" && $4=="found.") {

	getline

	getline

	getline

	getline

	getline

	getline

	getline

#	O1_Cl5=$4

	getline

#	O1_H6=$4

	getline

#	O2_H3=$4

	getline

#	O2_H4=$4

	getline

#	O2_Cl5=$4

	getline
	
	Cl5_O1_H6=$4
	
	getline

	H3_O2_H4=$4

	getline
	
	H3_O2_Cl5=$4

	getline
	
	H4_O2_Cl5=$4

	getline
	
	O1_Cl5_O2_H4__O1=$4

	getline
	
	O1_Cl5_O2_H4__O2=$4

	getline

	H6_O1_O2_H3=$4

	getline
	
	H6_O1_O2_H4=$4

	getline
	
	H3_O2_H4_Cl5=$4

	getline
	
 { j++

print j, Cl5_O1_H6, H3_O2_H4, H3_O2_Cl5, H4_O2_Cl5, O1_Cl5_O2_H4__O1, O1_Cl5_O2_H4__O2
# H6_O1_O2_H3, H6_O1_O2_H4, H3_O2_H4_Cl5

  }

}

}






