rem   *** validation ***
call scripts\run-validator-tests.bat
call scripts\run-checker-tests.bat

rem    *** tests ***
md tests
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value 0 -max-value 5" "tests\03" 3
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value -5 -max-value 0" "tests\04" 4
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value -5 -max-value 5" "tests\05" 5
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value 0 -max-value 1000000" "tests\06" 6
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value -1000000 -max-value 0" "tests\07" 7
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 2 -min-value -1000000 -max-value 1000000" "tests\08" 8
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 2 -max 5 -min-value -1000000 -max-value 1000000" "tests\10" 10
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 5 -max 5 -min-value -1000000 -max-value 1000000" "tests\11" 11
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 5 -max 100 -min-value -1000000 -max-value 1000000" "tests\12" 12
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 100 -max 100 -min-value -1000000 -max-value 1000000" "tests\13" 13
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 100 -max 200 -min-value -1000000 -max-value 1000000" "tests\14" 14
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 200 -max 200 -min-value -1000000 -max-value 1000000" "tests\15" 15
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 200 -max 400 -min-value -1000000 -max-value 1000000" "tests\16" 16
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 400 -max 400 -min-value -1000000 -max-value 1000000" "tests\17" 17
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 400 -max 800 -min-value -1000000 -max-value 1000000" "tests\18" 18
call scripts\gen-input-via-stdout.bat "files\testgen.exe -min 800 -max 800 -min-value -1000000 -max-value 1000000" "tests\19" 19
call scripts\gen-answer.bat tests\01 tests\01.a "tests" "0"
call scripts\gen-answer.bat tests\02 tests\02.a "tests" "1"
call scripts\gen-answer.bat tests\03 tests\03.a "tests" "1"
call scripts\gen-answer.bat tests\04 tests\04.a "tests" "1"
call scripts\gen-answer.bat tests\05 tests\05.a "tests" "1"
call scripts\gen-answer.bat tests\06 tests\06.a "tests" "1"
call scripts\gen-answer.bat tests\07 tests\07.a "tests" "1"
call scripts\gen-answer.bat tests\08 tests\08.a "tests" "1"
call scripts\gen-answer.bat tests\09 tests\09.a "tests" "1"
call scripts\gen-answer.bat tests\10 tests\10.a "tests" "1"
call scripts\gen-answer.bat tests\11 tests\11.a "tests" "1"
call scripts\gen-answer.bat tests\12 tests\12.a "tests" "2"
call scripts\gen-answer.bat tests\13 tests\13.a "tests" "2"
call scripts\gen-answer.bat tests\14 tests\14.a "tests" "3"
call scripts\gen-answer.bat tests\15 tests\15.a "tests" "3"
call scripts\gen-answer.bat tests\16 tests\16.a "tests" "4"
call scripts\gen-answer.bat tests\17 tests\17.a "tests" "4"
call scripts\gen-answer.bat tests\18 tests\18.a "tests" "5"
call scripts\gen-answer.bat tests\19 tests\19.a "tests" "5"

