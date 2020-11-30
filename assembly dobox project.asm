[org 0x0100]

jmp start

ds_name: db 'ds:'
es_name: db 'es:'
ss_name: db 'ss:'
sym : db '-'
Bar_sym : db '|'
space: db ' '
length : dw 3
valofAX : dw 0
valofBX : dw 0
valofCX : dw 0
valofDX : dw 0
valofflag : dw 0
valofcs : dw 0
valofip : dw 0
blinker:db 'CMD >'
blinker_size: dw 5

clrscr:     
  push es
  push ax 
  push cx
  push di
              mov  ax, 0xb800
			  mov  es, ax             ; point es to video base 
              xor  di, di             ; point di to top left column    
			  mov  ax, 0x0720         ; space char in normal attribute      
			  mov  cx, 2000           ; number of screen locations 
              cld                     ; auto increment mode          
			  rep  stosw              ; clear the whole screen 
			
  pop  di 
  pop  cx       
  pop  ax 
  pop  es  
  ret 
 
print15:

mov ax,0xb800
mov es,ax
mov si,0
mov word[es:si],0x0741
add si,2
mov word[es:si],0x0758
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0749
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0743
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0749
add si,2

mov word[es:si],0x0750
add si,2
;;;;;
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x00A30
add si,2


mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0774
add si,2

mov word[es:si],0x0761
add si,2

mov word[es:si],0x0763
add si,2

mov word[es:si],0x076b
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x072b
add si,2
mov word[es:si],0x0730
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0730
add si,2

mov word[es:si],0x0730
add si,2

mov word[es:si],0x0730
add si,2
mov word[es:si],0x0730
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x076c
add si,2

mov word[es:si],0x0761
add si,2

mov word[es:si],0x0767
add si,2

mov word[es:si],0x0773
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0737
add si,2

mov word[es:si],0x0732
add si,2

mov word[es:si],0x0700
add si,2

mov word[es:si],0x0732
add si,2

mov cx,0
spaces_again7:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx,26
jne spaces_again7

mov word[es:si],0x0742
add si,2
mov word[es:si],0x0758
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0744
add si,2

mov word[es:si],0x0749
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0744
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov cx,0
spaces_again4:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx,42
jne spaces_again4

mov word[es:si],0x072b
add si,2
mov word[es:si],0x0732
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0732
add si,2

mov word[es:si],0x0730
add si,2

mov word[es:si],0x0743
add si,2
mov word[es:si],0x0744
add si,2

mov cx,0
spaces_again3:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx,50
jne spaces_again3

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


mov word[es:si],0x0743
add si,2
mov word[es:si],0x0758
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0742
add si,2

mov word[es:si],0x0750
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0745
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0748
add si,2

mov word[es:si],0x0753
add si,2
;;;;;
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov cx,0
spaces_again2:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx,22
jne spaces_again2

mov word[es:si],0x072b
add si,2



mov word[es:si],0x0734
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0739
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0746
add si,2
mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x074f
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0744
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2
mov word[es:si],0x0749
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0746
add si,2
;;;;;;;;;;

mov word[es:si],0x0720
add si,2

mov word[es:si],0x075a
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0741
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0750
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0743
add si,2

mov word[es:si],0x0746
add si,2


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


mov word[es:si],0x0744
add si,2
mov word[es:si],0x0758
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0750
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0746
add si,2

mov word[es:si],0x0753
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0A39
add si,2

mov word[es:si],0x0A46
add si,2

mov word[es:si],0x0A35
add si,2

mov cx,0
spaces_again:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx , 22
jne spaces_again

mov word[es:si],0x072b
add si,2

mov word[es:si],0x0736
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0745
add si,2

mov word[es:si],0x0741
add si,2

mov word[es:si],0x0730
add si,2
mov word[es:si],0x0730
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A31
add si,2

mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0720
add si,2

mov word[es:si],0x0A30
add si,2

call print_line

call print25
ret 


print25:

mov ax,0xb800
mov es,ax
push ax
push bx
push dx
mov si,800
mov bx,0
loopspace:
        
       mov word[es:si],0x0720
	   add bx,1
	   add si,2
       cmp bx ,45
	   jne loopspace

mov word[es:si],0x07b3
add si,2

mov word[es:si],0x0A20
add si,2

mov word[es:si],0x7031
add si,2

mov cx,0
spaces_again6
	mov word[es:si],0x0720
	add si,2
	add cx,2
	cmp cx,16
	jne spaces_again6

	mov cx,0
	mov dx,0x0730
	
looplinecountnos:
        
        mov [es:si],dx
		add dx,0x0001
		add si,2
		mov word[es:si],0x0720
		add si,2
		mov word[es:si],0x0720
		add si,2
		
		add cx,1
		cmp cx,8
	    jne looplinecountnos
        call print_line_under_cursor
		call print_lineAbove_memory2
	    mov si,2720	
		mov word[es:si],0x0A20
		add si,2

		mov word[es:si],0x7031
		add si,2

		mov cx,0
spaces_again8:
	mov word[es:si],0x0720
	add si,2
	add cx,2
	cmp cx,14
	jne spaces_again8

		mov cx,0
		mov dx,0x0730
loopline2countnos1:
        mov [es:si],dx
		add dx,0x0001
		add si,2
		mov word[es:si],0x0720
		add si,2
		mov word[es:si],0x0720
		add si,2
		add cx,1
		cmp cx,10
	    jne loopline2countnos1
		mov cx,0
		mov dx,0x0741
loopline2countnos2:
        
        mov [es:si],dx
		add dx,0x0001
		add si,2
		mov word[es:si],0x0720
		add si,2
		mov word[es:si],0x0720
		add si,2
		add cx,1
		cmp cx,6
	    jne loopline2countnos2
		
		pop dx
		pop bx
		pop ax
		ret


print_line:
		push ax
		push bx
		push dx
		mov bx,0
loopline3:        
       push bx  ;col
       push 4  ; row 
       mov dx,7
       push dx
       mov dx,sym    ; word
       push dx
       push 1  
       call printWord
       add bx,1
       cmp bx ,79
	   jne loopline3
	   pop dx
	   pop bx
	   pop ax
 ret

print_lineAbove_memory2:
	push ax
	push bx
	push dx
    mov bx,0
 printlooplineabovememory:
        
       push bx  ;col
       push 16  ; row 
       mov dx,7
       push dx
       mov dx,sym    ; word
       push dx
       push 1  
       call printWord
       add bx,1
       cmp bx ,79
	   jne printlooplineabovememory
	   
	   pop dx
	   pop bx
	   pop ax
    
 ret

print_line_under_cursor
 
push ax
push bx
push dx
mov bx,0
 printlooplineundercursor:
        
       push bx  ;col
       push 6  ; row 
       mov dx,7
       push dx
       mov dx,sym    ; word
       push dx
       push 1  
       call printWord
       add bx,1
       cmp bx ,45
	   jne printlooplineundercursor
	   
	   pop dx
	   pop bx
	   pop ax
    
 ret
 
printWord: 
printstr:    push bp  
             mov  bp, sp 
			 push es      
			 push ax       
			 push cx       
			 push si        
			 push di 
 
             mov  ax, 0xb800   
			 mov  es, ax             ; point es to video base     
			 mov  al, 80             ; load al with columns per row  
			 mul  byte [bp+10]       ; multiply with y position        
			 add  ax, [bp+12]        ; add x position          
			 shl  ax, 1              ; turn into byte offset     
			 mov  di,ax              ; point di to required location 
             mov  si, [bp+6]         ; point si to string            
			 mov  cx, [bp+4]         ; load length of string in cx    
			 mov  ah, [bp+8]         ; load attribute in ah 

             cld                     ; auto increment mode 
	nextchar:    
			  lodsb                   ; load next char in al             
			  stosw                   ; print char/attribute pair        
			  loop nextchar           ; repeat for the whole string 
 
              pop  di        
			  pop  si        
			  pop  cx        
			  pop  ax        
			  pop  es         
			  pop  bp         
			  ret  10
			  
printnum_memory:
	 push bp
	 mov bp, sp
	 push es
	 push ax
	 push bx
	 push cx 
	 push dx
	 push di

	 mov di, 80 ; load di with columns per row
	 mov ax, [bp+8] ; load ax with row number
	 mul di ; multiply with columns per row
	 mov di, ax ; save result in di
	 add di, [bp+6] ; add column number
	 shl di, 1 ; turn into byte count
	 add di, 8 ; to end of number location

	 mov ax, 0xb800
	 mov es, ax ; point es to video base
	 mov ax, [bp+4] ; load number in ax
	 mov bx, 16 ; use base 16 for division
	 mov cx, 4 ; initialize count of digits

nextdigit11: 

		mov dx, 0 ; zero upper half of dividend
		div bx ; divide by 10
		add dl, 0x30 ; convert digit into ascii value
		cmp dl, 0x39 ; is the digit an alphabet
		jbe skipalpha11 ; no, skip addition
		add dl, 7 ; yes, make in alphabet code

skipalpha11:	

		mov dh, 0x0A ; attach normal attribute
		mov [es:di], dx ; print char on screen
		sub di, 2 ; to previous screen location
		cmp cx,3 
		jnz ll3
		sub di, 2 ; to previous screen location
		mov word[es:di], 0x0720 ; print char on screen
		ll3:
		loop nextdigit11 ; if no divide it again

		pop di
		pop dx
		pop cx
		pop bx
		pop ax
		pop es
		pop bp
		ret 6
		
		
printnum:
	 push bp
	 mov bp, sp
	 push es
	 push ax
	 push bx
	 push cx 
	 push dx
	 push di

	 mov di, 80 ; load di with columns per row
	 mov ax, [bp+8] ; load ax with row number
	 mul di ; multiply with columns per row
	 mov di, ax ; save result in di
	 add di, [bp+6] ; add column number
	 shl di, 1 ; turn into byte count
	 add di, 8 ; to end of number location

	 mov ax, 0xb800
	 mov es, ax ; point es to video base
	 mov ax, [bp+4] ; load number in ax
	 mov bx, 16 ; use base 16 for division
	 mov cx, 4 ; initialize count of digits

nextdigit: 

		mov dx, 0 ; zero upper half of dividend
		div bx ; divide by 10
		add dl, 0x30 ; convert digit into ascii value
		cmp dl, 0x39 ; is the digit an alphabet
		jbe skipalpha ; no, skip addition
		add dl, 7 ; yes, make in alphabet code

skipalpha:	

		mov dh, 0x0A ; attach normal attribute
		mov [es:di], dx ; print char on screen
		sub di, 2 ; to previous screen location
		loop nextdigit ; if no divide it again

		pop di
		pop dx
		pop cx
		pop bx
		pop ax
		pop es
		pop bp
		ret 6	
	
line_above_lastline:
	    push ax
		push bx
		push dx
		mov bx,0
printloopline_above_lastline:
       push bx  ;col
       push 23  ; row 
       mov dx,7
       push dx
       mov dx,sym    ; word
       push dx
       push 1  
       call printWord
       add bx,1
       cmp bx ,79
	   jne printloopline_above_lastline
	   
	   pop dx
	   pop bx
	   pop ax
    
 ret

last_line: 
mov si,3840
mov word[es:si],0x0731
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7053
add si,2
mov word[es:si],0x7074
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x7070
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0732
add si,2
mov word[es:si],0x7050
add si,2
mov word[es:si],0x7072
add si,2
mov word[es:si],0x706f
add si,2
mov word[es:si],0x7063
add si,2
mov word[es:si],0x7053
add si,2
mov word[es:si],0x7074
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x7070
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0733
add si,2
mov word[es:si],0x7052
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x7074
add si,2
mov word[es:si],0x7072
add si,2
mov word[es:si],0x7069
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x7076
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0734
add si,2
mov word[es:si],0x7048
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x706c
add si,2
mov word[es:si],0x7070
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x704f
add si,2
mov word[es:si],0x704e
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0735
add si,2
mov word[es:si],0x7042
add si,2
mov word[es:si],0x7052
add si,2
mov word[es:si],0x704b
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x704d
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x706e
add si,2
mov word[es:si],0x7075
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0736
add si,2

spaces_again5:
mov word[es:si],0x0720
add si,2
add cx,2
cmp cx,12
jne spaces_again5

mov word[es:si],0x0737
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7075
add si,2
mov word[es:si],0x7070
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0738
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7064
add si,2
mov word[es:si],0x706e
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0739
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x706c
add si,2
mov word[es:si],0x7065
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x0720
add si,2
mov word[es:si],0x0731
add si,2
mov word[es:si],0x0730
add si,2
mov word[es:si],0x7020
add si,2
mov word[es:si],0x7072
add si,2
mov word[es:si],0x7069
add si,2
mov word[es:si],0x7020
ret

printblinker:
     push bp 
     mov bp,sp
     push ax
     push bx
     push cx
     push dx

     mov ah,0x13
     mov al,1
     mov bh,0
     mov bl,7
     mov dx,0x0501
	 mov cx,[blinker_size]
	 push cs
	 pop es
	 mov bp,blinker
	 int 0x10

     pop dx
     pop cx
     pop bx
     pop ax
     pop bp
     ret

; single step interrupt service routine
trapisr:	
	
		push bp
		mov bp, sp ; to read cs, ip and flags
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		push ds
		push es
		mov ax,0xb800
        mov es,ax		
		mov cx,100
		;in al,0x60
		mov ah,0x0000
		int 0x16
        cmp ah,0x3B	; cmp with f1
        jne nextcmp
		jmp F1keyfunctionality

nextcmp:		
		mov ah,0x0000
		int 0x16
		cmp word[blinker_size],47
		je long_jump
		add word[blinker_size],1
		call printblinker
		add si,800
		mov ah,0x07
		mov byte[es:820],al
		jmp long_jump

F1keyfunctionality:	
		mov cx,1000
		push cs
		pop ds ; initialize ds to data segment
		mov ax,word[bp+6]
		mov word[valofflag],ax
		
		mov ax,word[bp+4]
		mov word[valofcs],ax
		
		mov ax,word[bp+2]
		mov word[valofip],ax
	
	    mov ax,0
		push ax ; row number
		mov bx,2
		push bx ; column number
		mov dx, word[valofAX]
		push dx ; number to be printed
		call printnum ; print the number
	
		mov ax,1
		push ax ; row number
		mov bx,2
		push bx ; column number
		mov dx, word[valofBX]
		push dx ; number to be printed
		call printnum ; print the number
	
		mov ax,2
		push ax ; row number
		mov bx,2
		push bx ; column number
		mov dx, word[valofCX]
		push dx ; number to be printed
		call printnum ; print the number
		
long_jump:		
cmp cx,1000
jne exit_trap
		
	    mov ax,3
		push ax ; row number
		mov bx,2
		push bx ; column number
		mov dx, word[valofDX]
		push dx ; number to be printed
		call printnum ; print the number
	
	
		mov ax,-1
		push ax ; row number
		mov bx,142
		push bx ; column number
		mov dx, word[valofflag]
		push dx ; number to be printed
		call printnum ; print the number
		
		
		mov ax,-1
		push ax ; row number
		mov bx,102
		push bx ; column number
		mov dx, word[valofcs]
		push dx ; number to be printed
		call printnum ; print the number
		
		mov ax,-1
		push ax ; row number
		mov bx,112
		push bx ; column number
		mov dx, word[valofip]
		push dx ; number to be printed
		call printnum ; print the number
	
		mov ah, 0x10 ; service 10 – vga attributes
		mov al, 03 ; subservice 3 – toggle blinking
		mov bl, 01 ; enable blinking bit
		int 0x10 ; call BIOS video service
	
		mov ah, 0 ; service 0 – get keystroke
		int 0x16 ; call BIOS keyboard service

		
exit_trap:		
		pop es
		pop ds
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax 
		pop bp
		iret


verticle_line:
push bp
mov bp,sp
push ax
push bx
push cx
push si
mov ax,6

printloopNextVerticleLine:     
       push 45  ;col
       push ax  ; row 
       mov dx,7
       push dx
       mov dx,Bar_sym    ; word
       push dx
       push 1  
       call printWord
       add ax,1
       cmp ax ,16
	   jne printloopNextVerticleLine
pop si
pop cx
pop bx
pop ax
pop bp
ret


		
		
print_tables:
                      ;Table of m2
	mov ax , 18
	mov bx , 3
	mov si,0x0000    ; memory starting of m2
	mov cx,5
	mov word[bp+10],ax   ;row

r22:
	push ax
	push bx
	push si
	call printnum
	add si,16
	add ax,1
		loop r22
	mov cx,5
	mov bx,0

r222:        ; loop printing word
	mov dx,0 
	push dx
	push word[bp+10]   ;row
	mov dx,7
	push dx
	mov dx,ds_name
	push dx
	push word [length] 
	call printWord
	add word[bp+10],1   
	add ax,1
	loop r222

	mov cx,5
	mov si,0x0000    
	mov ax , 18  ; row 
r11:
	push cx
	mov cx,8
	mov bx , 9
m2:
	push ax
	push bx
	mov dx,[ds:si]
	xchg dl,dh
	push dx
	call printnum_memory
	add bx,6
	add si,2
	loop m2
	pop cx
	add ax,1
	loop r11

; m1 table

	mov ax ,6
	mov bx , 50
	mov si,0x0000         ;memory starting of m1
	mov cx,10
	mov word[bp+10],ax

r21:
	push ax
	push bx
	push si
	call printnum
	add si,8
	add ax,1
	loop r21
	mov cx,10

r333:        ; loop printing word
	mov dx,47    ;col
	push dx
	push word[bp+10]  ; row 
	mov dx,7
	push dx
	mov dx,ds_name    ; word
	push dx
	push word [length]  
	call printWord
	add word[bp+10],1
	add ax,1
	loop r333

	mov cx,10
	mov si,0x0000
	mov ax , 6     ; row 
rm11:
	push cx
	mov cx,4
	mov bx ,56
m1:
	push ax
	push bx
	mov dx,[ds:si]
	xchg dl,dh
	push dx
	call printnum_memory
	add bx,6
	add si,2
	loop m1
	pop cx
	add ax,1
	loop rm11
	ret
	
start:
	call clrscr
	call print15
	call last_line
	call line_above_lastline
	call verticle_line
	call print_tables
	call printblinker

sti;waiting for keyboard interupt
	xor ax, ax
	mov es, ax ; point es to IVT base

	mov word [es:1*4], trapisr ; store offset at n*4
	mov [es:1*4+2], cs ; store segment at n*4+2

	pushf ; save flags on stack
	pop ax ; copy flags in ax
	or ax, 0x100 ; set bit corresponding to TF
	push ax ; save ax on stack
	popf ; reload into flags register

; the trap flag bit is on now, INT 1 will come after next instruction
; sample code to check the working of our elementary debugger
	mov ax, 0
	mov word[valofAX],ax
	mov bx, 0x10
	mov word[valofBX],bx
	mov cx, 0x20
	mov word[valofCX],cx
	mov dx, 0x40
	mov word[valofDX],dx
	
l2: 
    add ax,1
	mov word[valofAX],ax
	add bx, 2
	mov word[valofBX],bx
	dec cx
	mov word[valofCX],cx
	sub dx, 2
	mov word[valofDX],dx
	jmp l2

	mov ax, 0x4c00
	int 21h