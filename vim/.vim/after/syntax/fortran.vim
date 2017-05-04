
syn region fortranOmpDir start=/!\$omp.\{-}/ end=/[^\&]$/ 
syn region fortranIntelDir start=/!dir\$.*/ end=/[^\&]\n/ 

hi def link fortranIntelDir PreProc
hi def link fortranOmpDir PreProc
