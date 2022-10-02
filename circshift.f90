subroutine circshift(a_in,dimn,turn,a_out)
  
  implicit none
  integer*8 :: i,j,n,nn
  integer*8, intent(in) :: dimn,turn
  real*8, dimension(dimn),intent(in) :: a_in
  real*8, dimension(dimn),intent(out) :: a_out
  real*8,dimension(:),allocatable :: a,b

  n = dimn
  nn = turn
   
  allocate(a(1:n),b(1:n))
   
  a = a_in

!  write(*,*)'a=',a

  do j= 1,nn
    b(1) = a(n)
    do i = 1,n-1
      b(i+1)=a(i)
    end do
    a = b
  end do
  
  a_out = b 

!  write(*,*)'b=',b



end subroutine 

