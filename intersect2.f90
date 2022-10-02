program intersect
    implicit none
    integer*8 :: i,j,k,co, cn
    integer*8 :: dim1,dim2 
    real*8,dimension(:),allocatable :: arr1
    real*8,dimension(:), allocatable :: arr2
    real*8,allocatable,dimension(:) :: intarr,intarrN
    real*8 :: r1,r2

    dim1 = 8
    dim2 = 9

    allocate(arr1(1:dim1),arr2(1:dim2))

    
    do i=1,dim1
       call random_number(r1)
       arr1(i) = int(1+10*r1)
    end do

    do j=1,dim2
        call random_number(r2)
        arr2(j) = int(1+10*r2)
    end do

    !arr1 = [3, 4, 1, 5, 2, 4, 2, 5]
    !arr2 = [1, 2, 5, 4, 7, 8, 3, 5, 9]



    write(*,*)'arr1=',(arr1(i),i=1,dim1)
    write(*,*)'arr2=',(arr2(i),i=1,dim2)

    co = 0
    do i=1,dim1
        do j=1,dim2
            if(arr1(i).eq.arr2(j))then
                co = co + 1
                !write(*,*)arr2(j)
            end if
        end do
    end do
    
    allocate(intarr(1:co))

! This is a very weired way of doing it.
! But I'm not that good at Fortran yet.
! ... and it works :) 

    co=0 
    do i=1,dim1
        do j=1,dim2
            if(arr1(i).eq.arr2(j))then
                co = co + 1
                intarr(co)=arr1(i)
            end if
        end do
    end do
    
! Till now I have found the common elemetns between two arrays. 
! Now i have to delete the duplicate elements. 


   write(*,*)'intarr=', (intarr(k),k=1,co)
   

   call unique(intarr,co,intarr,cn)

   write(*,*)'intarr=', (intarr(k), k=1,cn)






end program
