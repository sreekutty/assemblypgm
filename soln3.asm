section .data
   
info1: db 'Enter age',10,0   
   infoin: db "%d", 0               
   number: dd 0             
   info2:db 'Eligible',10,0
   info3:db 'Not Eligible',10,0
   age: dd 18


section .text

  global main
  extern printf
  extern scanf

main:

   push ebp ; save registers
   mov ebp,esp ;
   push info1;
   call printf

   add esp, 4 ; remove parameters
   push number ; address of integer (second parameter)
   push infoin ; arguments are right to left (first parameter)
   call scanf;

  mov eax,[number];

  cmp eax,[age];

  jge func;

 push info3
        call printf
        jmp exitfn;


func:

 push info2;
 call printf
 jmp exitfn;

exitfn:

 mov esp,ebp;
  pop ebp
   ret



