
section .data ; this the data section which holds initailized varables and const varables/values
    ;  this are varable type declaration note equ is a const varable declaration type as you may know we dint subtitute the datatype equ to let
    ; the assembler know how many bit we want to alocate for that varable is because the const gets subtituted for its value so it desent get a memory address like myConst equ 20 
    ; myConst will be replaced with the initialized value in this case 20 
    ; note the first d in dataType of a varable declaration is to signify this a dataType the like db as the first "d" is for dataType and the b is for single byte which is 8 bits eg dw "d" dataType "W" word which is 2 bytes 16 bits , dd "d" dataType "d" double word which is 4 bytes 32 bits 
    singleByteVarable  db  10  ; this a varable of 8 bits since decimal 10 to binary is msb(1010)lsb
    doubleByteVarable db "C"  ; this also a 8 bits varable which is 1 byte since ech caracter is represented in a single byte
    wordVarble dw "Hi" ; this is a 16 bits varable equvilent to 2 bytes which is represented with the dataType dw
    doubleWordVarable dd "oKey" ; this a 32 bits varable equvilent to 4 bytes it is represented with the dataType dd which is a double word 
    ;qourdWordVarble dq "victory" ; this a 64 bits varable equvilent to 8 bytes it is represented with the dataType dq which is a qourd  word  
    ;;oneHoundredAndTwoantyEightBitVarable ddq "nwanoruo" ; this a 128 bit varable equvilent to 16 b  ytes it is represnted with the dataType ddq which is double qourd word
    eightBitArr db 10, 10, 10 ; this an 8 bit array this means weach value in the array is 8 bit note no [  ] in the array declaration its defreantaciated with ,

section .bss ; this the base section (bss) which hold vrables that are not yet initailized
    ; note in the base section (bss) the varable allocated memory is and array which formart is as follows
    ; <varableName> <resDataType> <arrayLength/count> this said when allocation some memory for an uninitailized varable the varable type is an array with each value the size of the resDataType and the length / count of the array is the <length/count> 
    fourByteArray resw 5 ; this is an unitailized varable array with each value max size of 32 bits 4 bytes of length 5 eg [0, 0, 0, 0, 0] note the array is not initailed am guessing it holds random values
    eightBytesArray resd 10; this a an unitailized varable array with each value max size of 64 bits 8 bytes of lenth 10 eg [0, 0, 0, 0, 0, 0, 0, 0, 0, 0,]   note the array is not initailed am guessing it holds random values
    oneByteArray resb 100 ;   this a an unitailized varable array with each value max size of 8 bits 1 bytes of lenth 10 eg [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... 100]   note the array is not initailed am guessing it holds random values  

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    mov rax, 0
    mov rdi, 0
    ;ret
last:
    syscall   
       
    
    