section.text
  global start  ;this is the start of the assembly program

_start:         ;tells linker the entry point on the memory address ie 0x80 to summon kernel...heh popcorn
  mov edx,len   ;message length
  mov ecx,msg   ;message to write
  mov ebx,1     ;file descriptor (stdout)
  mov eax,4     ;system call number (sys_write)
  int 0x80      ;calls kernel
  
  mov eax,1     ;system call number (sys_exit)
  int 0x80      ;calls kernel
  
_section.data   
msg db "Hello world!", 0xa  ;string to be called
len eq $ - msg  ;length of the string
  
  
