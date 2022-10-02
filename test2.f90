program test
  
  implicit none
  integer*8 :: i,n,k
  real*8,dimension(:),allocatable :: a
  real*8 :: p
  integer*8, dimension(:),allocatable :: b 

  n = 6

  allocate(a(1:n), b(1:n))

  a = [1,2,3,4,2,6]
  p = 7
  
  !b = [0,0,0,0,0,0]

  
  write(*,*)'a=',(a(i),i=1,n)
 
  call find(a,n,p,b,k)

  write(*,*)'b=', (b(i), i=1,k)




!  write(*,*)'turn=',k

!  call circshift(a,n,k,b)
  
!  write(*,*)'b=',(b(i),i=1,n)

end program
