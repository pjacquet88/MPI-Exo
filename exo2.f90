program exo1      !! Nom du code
  use mpi         !! Package à ajouter pour utiliser OPEN-MPI
  implicit none   !! Classique implicit none

  !---------------- Déclarations ---------------------  
  integer :: code
  integer :: rank
  integer :: size
  !---------------------------------------------------


  !----------- Programme à completer -----------------

  call MPI_INIT( )     !! Début de la zone parallèle

  call MPI_COMM_RANK(MPI_COMM_WORLD, , )
  call MPI_COMM_SIZE(MPI_COMM_WORLD, , )
  
  print*,'Bonjour, je suis le processeur numero : ', ,' sur', ,'  processeurs'

  call MPI_FINALIZE( ) !! Fin de la zone parallèle
  
  !--------- Fin du programme à completer ------------
  
end program exo1  !! Fin du programme
