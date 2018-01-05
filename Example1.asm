; Example 1 using the stack to call subroutines
; instructions used: PUSH, POP, CALL, RET, MOV

sub:
  PUSH    ebp           ; pushes the ebp onto the stack
  MOV     ebp, esp      ; moves esp to ebp
  MOV     eax, 0BEEFh   ; moves 0BEEFh to eax
  POP     ebp           ; pops ebp off of stack
  RET                   ; whatever is at the top of the stack is where it goes next

main:
  PUSH    ebp           ; pushes ebp onto stack
  MOV     ebp, esp      ; moves esp to ebp (destination on left)
  CALL    sub(401000h)  ; calls the subroutine
  MOV     eax, 0F00Dh   ; moves 0F00Dh to eax
  POP     ebp           ; pops ebp off of the stack
  RET

; below is the example in C language
; int sub()
; {
;   return 0xbeef
; }
; int main()
; {
;   return 0xf00d;
; }

; Note: because there are no input parameters to sub(), there is no difference whether we compile as cdecl vs stdcall calling conventions.
