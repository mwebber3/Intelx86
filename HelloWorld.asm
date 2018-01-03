main
  PUSH  ebp
  MOV   ebp, esp
  PUSH  offsetaHelloWorld; "Hello World\n"
  CALL  ds:_imp_printf
  ADD   esp, 4
  MOV   eax, 1234h
  POP   ebp
  RETN
