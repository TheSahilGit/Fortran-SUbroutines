subroutine CalculateArea(x,y,n,area)
    implicit none
    integer*8 :: i,j
    integer*8, intent(in) :: n
    real*8, dimension(n), intent(in) :: x,y
    real*8, intent(out) :: area
    real*8 :: sum1, sum2 
    integer*8 :: n1,n2




    area = 0.0d0
    sum1 = 0.0d0
    sum2 = 0.0d0

    
    do i=1,n
        j = i+1
        if(i==n)then
            j=1
        end if

        sum1 = sum1 + x(i)*y(j)
        sum2 = sum2 + x(j)*y(i)

        area = (sum1-sum2)/2.0
    end do
            












end subroutine
