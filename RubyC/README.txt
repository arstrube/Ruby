STEPS TO BUILD
==============
ruby extconf.rb
make
irb # see input below

PATH to use on DEN0204271
=========================
path c:\data\_DevTools\msys\bin;C:\data\_DevTools\Ruby193\bin;C:\data\_DevTools\MinGW452\bin;C:\data\_DevTools\Ruby193\bin;C:\data\_DevTools\IntegrityClient\bin;C:\PROGRA~2\CA\SC\CAWIN\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\PROGRA~2\CA\SC\Csam\SockAdapter\bin;C:\PROGRA~2\CA\DSM\bin;C:\PROGRA~2\CA\SC\CBB\;C:\PROGRA~2\CA\SC\CAM\bin;C:\PROGRA~1\doxygen\bin;c:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;c:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\CMake 2.8\bin;C:\data\_devtools\msys\bin;C:\PROGRA~2\MKS\IntegrityClient\bin;C:\PROGRA~2\CA\SC\CAWIN\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\PROGRA~2\CA\SC\Csam\SockAdapter\bin;C:\PROGRA~2\CA\DSM\bin;C:\PROGRA~2\CA\SC\CBB\;C:\PROGRA~2\CA\SC\CAM\bin;C:\PROGRA~1\doxygen\bin;C:\PROGRA~2\MKS\IntegrityClient\bin;C:\PROGRA~2\CA\SC\CAWIN\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\PROGRA~2\CA\SC\Csam\SockAdapter\bin;C:\PROGRA~2\CA\DSM\bin;C:\PROGRA~2\CA\SC\CBB\;C:\PROGRA~2\CA\SC\CAM\bin;C:\PROGRA~1\doxygen\bin

CORRECTION
==========
irb(main):003:0> require './hello'
=> true

IRB INPUT
=========
1. 
2. require './hello';h=Hello::MyFile.new('hello.c')
3. require './hello';h=Hello::World.new;h.print_string('Hello World\n')
