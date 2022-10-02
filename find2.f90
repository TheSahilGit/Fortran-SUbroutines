program find
  implicit none
  integer*8 :: i, n, c
  real*8, allocatable, dimension(:) :: a 
  real*8 :: p
  integer*8, allocatable, dimension(:) :: indx




  n = 6

  allocate(a(1:n))
  
  a = [2,2,3,8,2,6]
  p = 3
  
  c = 0
  do i=1,n
    if(p==a(i))then
      c = c+1
    end if
  end do
  
  if(c/=0)then
    allocate(indx(1:c))
  else
    allocate(indx(1))
    indx(1) = 0
  end if
 

  c = 0
  do i=1,n
    if(p==a(i))then
      c = c + 1
      indx(c)=i
    end if
  end do


  write(*,*)indx 












end program find

