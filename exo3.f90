program exo3      !! Nom du code
  use mpi         !! Package à ajouter pour utiliser OPEN-MPI
  implicit none   !! Classique implicit none
  integer :: code,size,rank !! Déclaration d'un entier ici appelé code qui permettra l'initialisation du la zone parallèle du programme
  integer :: i,n_min,n_max
  integer :: i_begin,i_end
  real    :: resultat_proc,resultat_global

  
  call MPI_INIT( )     !! Début de la zone parallèle

  call MPI_COMM_RANK( , , )
  call MPI_COMM_SIZE( , , )
  
  n_min=0
  n_max=1000000000
  resultat_proc=0.0
  resultat_global=0.0

  call charge(rank,size,n_min,n_max,i_begin,i_end)  ! permet d'initialiser sur chaque processeur i_begin et i_end
  
  do i=i_begin,i_end
     resultat_proc=resultat_proc+4.0*(-1)**i/(2.0*i+1.0)
  end do

  call MPI_ALLREDUCE ( , , , , , , )

  if (rank==0) then
     print*,'le resultat est : ',resultat_global
end if

 call MPI_FINALIZE(code) !! Fin de la zone parallèle

contains

  subroutine charge(rank,size,n_min,n_max,i_begin,i_end)
    implicit none
    integer,intent(in)  :: rank
    integer,intent(in)  :: size
    integer,intent(in)  :: n_min
    integer,intent(in)  :: n_max
    integer,intent(out) :: i_begin
    integer,intent(out) :: i_end




    

  end subroutine charge

    

end program exo3  !! Fin du programme
