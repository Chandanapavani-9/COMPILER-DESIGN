%{
%}
%%
[a-z.0-9]+@[a-z]+(.com|.in) {printf("\n valid\n);}
.+ {printf("\n invalid\n");}
%%
int yywrap()
{}int main()
{
printf("\n enter:");
yylex();
}
