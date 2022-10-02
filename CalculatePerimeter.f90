subroutine CalculatePerimeter(x,y,n,perimeter)
    implicit none
    integer*8 :: i,j
    integer*8, intent(in) :: n
    real*8, dimension(n), intent(in) :: x,y
    real*8, intent(out) :: perimeter
    real*8 :: d 




    perimeter = 0.0d0
    d = 0.0d0

    
    do i=1,n
        j = i+1
        if(i==n)then
            j=1
        end if
        d = (x(i)-x(j))**2 + (y(i)-y(j))**2
        perimeter = perimeter + sqrt(d)

    end do
            












end subroutine
