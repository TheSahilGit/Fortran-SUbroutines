subroutine flip(n,a,b)
    implicit none
    integer*8, intent(in) :: n
    integer*8 :: i
    real*8,dimension(n),intent(in):: a
    real*8,dimension(n),intent(out):: b
    
 
    do i=1,n
        b(i) = a(n-i+1)
    end do


end subroutine
