%option noyywrap
%{
   #include "task_1.tab.h"
%}
delim [ \t]
ws {delim}+
digit [0-9]
number ({digit}+)
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})*
%%
{ws} {}
{number} {yylval = atoi(yytext); return(NUM);}

{id} {return(ID);}
"%"  {return(MODD);}
"=="  {return(EQ);}
"="  {return(ASSIGN);}
";"  {return(SEMI);}
"+" { return(ADD); }
"-" {return(SUB); }
"*" { return(MUL); }
"/" {return(DIV); }
%%
 /* A % 2 == 4 */