mkdir a011
tools\armips data\moves.s
tools\narchive create a011.narc a011/ -nf
rmdir /q /s a011
tools\armips asm\moves.s
tools\armips asm\tr_ai.s
cd text
thenewpoketext < script1.txt
xcopy "a027withalotofblanks" "tmp_base\root\a\0\2\7"
thenewpoketext < script2.txt
cd ..\
xcopy "text\tmp_base\a027.narc" "a027.narc"
call scripts\makemovescripts
call scripts\makeanimscripts