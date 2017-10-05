program exo1
  use mpi
  implicit none
  integer :: code

  call MPI_INIT(code)

  print*,'Bonjour'

  call MPI_FINALIZE(code)

end program exo1
