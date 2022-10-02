subroutine bubblesort(a_in,n,a_out)

    implicit none
    integer*8 :: i,j,k
    integer*8, intent(in):: n
    real*8, dimension(n), intent(in):: a_in
    real*8, dimension(n), intent(out) :: a_out
    real*8 :: b,c
    
    a_out = a_in

    do i=1,n
        do j=1,n-1
            b = a_out(j)
            c = a_out(j+1)
            if(a_out(j)>a_out(j+1))then
                a_out(j) = c
                a_out(j+1) = b
                !write(*,*)b
            end if
        end do
    end do


end subroutine

