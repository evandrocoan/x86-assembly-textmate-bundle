; SYNTAX TEST "Packages/User/x86_64 Assembly.tmbundle/Syntaxes/x86_64 Assembly.sublime-syntax"

%if<condition> 
    ; some code which only appears if <condition> is met 
%elif<condition2> 
    ; only appears if <condition> is not met but <condition2> is 
%else 
    ; this appears if neither <condition> nor <condition2> was met 
%endif

%else
;^^^^ invalid.illegal
%elif
;^^^^ invalid.illegal
%endif
;^^^^^ invalid.illegal

%if DEBUG
	push %1
;         ^ invalid.illegal
%else
	push %2
;         ^ invalid.illegal
%endif

%macro mymacro 2
%if DEBUG
	push %1
;         ^ variable.other.preprocessor
%else
	push %2
;         ^ variable.other.preprocessor
%endif
%endmacro
