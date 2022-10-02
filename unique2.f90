program uni
    implicit none
    integer*8 :: i,j,k,n
    real*8, dimension(:), allocatable :: a
    real*8,dimension(:),allocatable :: b
    
    n = 9
    allocate(a(1:n))
    a = [6,1,2,2,3,2,1,5,6]
    write(*,*)a
    k = 0
    do i=1,n
        do j = i+1,n
            if (a(i)/=-1)then
                if(a(i)==a(j))then
                    a(j)=-1
                    k = k+1
                end if
            end if
        end do
    end do

    write(*,*)a
    
    allocate(b(1:n-k))
    j=0
    do i =1,n
        if(a(i)/=-1)then
            j = j+1
            b(j)=a(i)
        end if
    end do

    write(*,*)b






end program uni
