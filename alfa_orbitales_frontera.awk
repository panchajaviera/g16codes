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

# if ($1=="Single" && $2=="Point" && $3="computation")
#{
#coord=$7
#}

  while ( $1=="Alpha" && $2=="occ.") {
	  homo=$9
          getline
	if ( $2=="virt."){
	j++
	lumo=$5

 mu=0.5*(homo + lumo);    
 eta=(lumo - homo);	    
 omega= (mu * mu)/(2 * eta)

if (j==K){printf "%-10s %-18s %-10s %-10s %-10s %-10s %-10s %s\n", coord, energy, homo, lumo, mu, eta, omega, K

K=K+1}

	}

  }

}

 

# IRC E HOMO LUMO POTENCIAL 






