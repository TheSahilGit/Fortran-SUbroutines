!******************************************************
! This code gives sorted unique elements of an 1D array
!******************************************************


subroutine unique(arr_in,dim_old,arr_out,dim_new)
    implicit none
    integer*8 :: i,j,k
    integer*8, intent(in) :: dim_old
    real*8, dimension(dim_old),intent(in) :: arr_in
    real*8, dimension(dim_old) :: dum
    integer*8 :: nn
    integer*8, intent(out) :: dim_new
    real*8, dimension(nn), intent(out) :: arr_out 
    
    dum = arr_in
    nn = dim_old

    do i=1,nn-1
       j = i+1
       do while(j<=nn)
           if(dum(i)==dum(j))then
               do k=j,nn
                   dum(k)=dum(k+1)
               end do
               nn = nn - 1
               j = j-1    
           end if
           j = j+1
       end do
    end do
    
    
    call bubblesort(dum,nn,dum)
    
    arr_out = dum 
    dim_new = nn

end subroutine
