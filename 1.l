%{
int nchar,nword,nlines;
%}
%%
\n {nline++,nchar++;}
[^ \t\n] {nword+,nchar +=yyleng;}
.{nchar++;}
%%
int yywrap(void){
return 1;
}
int main(int argc,char *argv[]){
yyin=fopen(argv[1],"r");
yylex();
printf("enter the number of characters:%d",nchar);
printf("enter the number of words:%d",nword);
printf("entr the number of lines:%d,nline);
ffclose(yyin)
}