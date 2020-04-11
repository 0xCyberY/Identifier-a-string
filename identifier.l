%{
#include "y.tab.h"
%}
%%
[a-z_] {return letter;}
[0-9] {return digit;}
. {return yytext[0];}
\n {return 0;}
%%
