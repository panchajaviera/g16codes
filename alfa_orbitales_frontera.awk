#Modificado por Fran el 7 de octubre,2021

# Para correr el programa:
# $ awk -f script.awk <archivo_de_entrada> archivo_de_salida
# Archivo para extraer datos de energias, orbitales moleculares frontera proveniente de Single Point

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






