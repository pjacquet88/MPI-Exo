program exo1      !! Nom du code
  use mpi         !! Package à ajouter pour utiliser OPEN-MPI
  implicit none   !! Classique implicit none
  integer :: code !! Déclaration d'un entier ici appelé code qui permettra l'initialisation du la zone parallèle du programme

  call MPI_INIT(code)     !! Début de la zone parallèle

  print*,'Bonjour'

  call MPI_FINALIZE(code) !! Fin de la zone parallèle
  
end program exo1  !! Fin du programme
