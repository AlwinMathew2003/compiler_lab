%{
#include "y.tab.h"
%}
%%
[0-9]+ {yylval.dval=(*yytext);return NUM;}
. return yytext[0];
\n return 0;
%%
int yywrap()
{
    return 1;
}