subroutine find(a_in,dimn,element,indx,newDim)
  implicit none
  integer*8, intent(in)::dimn
  real*8, dimension(dimn), intent(in)::a_in
  real*8, intent(in) :: element 
  integer*8, dimension(dimn), intent(out) :: indx
  integer*8, intent(out) :: newDim

  integer*8 :: c
  integer*8 :: i,n
  real*8, allocatable, dimension(:) :: a 
  real*8 :: p
  


  n = dimn

  allocate(a(1:n))

  a = a_in
  p = element

!  c = 0
!  do i=1,n
!    if(p==a(i))then
!      c = c+1
!    end if
!  end do
!  
!!  if(c/=0)then
!    allocate(indx(1:c))
!  else
!    allocate(indx(1))
!    indx(1) = 0
!  end if
!  

  c = 0
  do i=1,n
    if(p==a(i))then
      c = c + 1
      indx(c)=i
    end if
  end do

  newDim = c

!  write(*,*)indx 












end subroutine find

