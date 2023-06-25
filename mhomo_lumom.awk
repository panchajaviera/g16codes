# written on awk program language
# Archivo para extraer datos de energias, orbitales moleculares frontera proveniente de sp_generator o sp_generator counterpoise by vcnt@qtc.cl
# Modified by fjbenitez@uc.cl
#

BEGIN{K=1}
{
	if ($1=="SCF" && $2=="Done:" )
{
	energy=$5
}

	while ($1=="Alpha" && $2=="occ.") {
	
		mhomo=$8
		homo=$9

	        getline
	
	if ( $2=="virt."){

	j++
		lumo=$5
		lumom=$6

	if (j==K){
	
	printf "%-10s %-10s %-10s %-10s %-10s %-10s %s\n", j, energy, mhomo, homo, lumo, lumom, K

	K=K+1}

	}
}

}


 
