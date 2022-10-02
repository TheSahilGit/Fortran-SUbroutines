!module mymodule
!   implicit none
!   contains     
!   include 'flip.f90'
!end module
!
program arrsw
   implicit none

   integer*8 :: i,j,n
   real*8, allocatable, dimension(:) :: a,b
   real*8 :: r

   n = 11

   allocate(a(1:n), b(1:n))

   do i=1,n
      call random_number(r)
      a(i) = int(1+r*10)
   end do

   write(*,*)'a=',(a(i),i=1,n)

   call flip(n,a,b)

   write(*,*)'b=',(b(i),i=1,n)

end program
