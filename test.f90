program test
    implicit none 
    integer*8 :: i,j, n,m, k
    real*8,allocatable,dimension(:):: x,y, a,a_sort,b
    real*8 :: perimeter, distance
    real*8::r
    integer*8 :: n1,n2,newdim
    real*8,dimension(:),allocatable:: inters


!    open(1,file='test1.dat')

!    area = 0
    call random_number(r)
    n = int(1+r*10)
    call random_number(r)
    m = int(1+r*10)
    

    allocate(x(1:n), y(1:n),a(1:n),a_sort(1:n),b(1:m))
    
    if(n<m)then
        allocate(inters(1:n))
    else
        allocate(inters(1:m))
    end if

!    do i=1,n
!        a(i) = i
!    end do
!    x(1)=0
!    y(1)=0
!    x(2)=0
!    y(2)=1
!    x(3)=1
!    y(3)=1
!    x(4)=1
!    y(4)=0
!    x(5)=-0.5
!    y(5)=0.5
!
!    a = [1, 5, 3, 2,5,4, 6]
    

!    write(*,*)n,m

    do i=1,n
      call random_number(r)
      a(i) = int(1+r*10)
    end do
    do i =1,m
       call random_number(r)
       b(i) = int(1+r*10)
    end do




!    n1 =size(x)
!    n2 =size(y)
!
!
!
!    write(*,*)'x=',(x(i),i=1,n)
!
!    write(*,*)'y=',(y(i),i=1,n)
!    
!    call CalculatePerimeter(x,y,n,perimeter)
!
!    call CalculateDistance(x(1),y(1),x(3),y(3),distance)
!    
!    write(*,*)'dim=', n
!
!    write(*,*)'perimeter=',perimeter
!    
!    write(*,*)'n1=',n1, 'n2=',n2
!
!    write(*,*)'distance= ', distance
!
!    write(*,*)'a=', a
!
!    all flip(n,a,aflip)
!
!    rite(*,*)'aflip=', aflip
!    
    write(*,*)'a_in=',a   
    write(*,*)'b_in=',b

    call intersect(a,n,b,m,inters,newdim)
    
    
    write(*,*)'inters=', (inters(k),k=1,newdim)
    write(*,*)'newdim=', newdim

!    call bubblesort(a,n,a_sort)
!    write(*,*)'a_sort=', a_sort

!    do i=1,n
!        write(1,*)i,a(i),a_sort(i)
!    n = 6
!    allocate(a(1:n),b(1:n))
!    i = 1    
!    a = [1,2,3,4,5,6]
!    call circshift(a,n,i,b)
!    write(*,*)a
!    write(*,*)b
!
end program 

