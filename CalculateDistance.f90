subroutine CalculateDistance(x1,y1,x2,y2,distance)
    implicit none
    integer*8 :: i,j
    real*8, intent(in) :: x1,y1,x2,y2
    real*8, intent(out) :: distance
    real*8 :: d 

    

    d = (x1-x2)**2 + (y1-y2)**2
    distance = sqrt(d)





    
        

            












end subroutine
