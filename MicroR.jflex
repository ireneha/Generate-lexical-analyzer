/*Ngoc Ha nh0322*/
%%
%{
    private void echo(){System.out.print(yytext());}
    public int position (){return yycolumn;}
%}

%class		MicroRLexer
%function	nextToken
%type		Token
%unicode
%line
%column
%eofval{
    {return new Token (Symbol.EOF);}
%eofval}

WhiteSpace	 = [\r|\n|\r|\n] |[ \t\f]
String 		 = \"(\\.|[^\"])*\"			
Ident 		 = [:letter:] ([:letter:] | [:digit:] | "_")*
Integer		 = 0|[1-9] [:digit:]*
Comment		 = "#" [^\n\r]*[\r|\n]?


%%
"."		{ echo(); return new Token(Symbol.PERIOD);}
","		{ echo(); return new Token(Symbol.COMMA);}
";"		{ echo(); return new Token(Symbol.SEMICOLON);}
"<-"		{ echo(); return new Token(Symbol.ASSIGN);}
"="		{ echo(); return new Token(Symbol.EQ);}
"!="		{ echo(); return new Token(Symbol.NE);}
"<"		{ echo(); return new Token(Symbol.LT);}
">"		{ echo(); return new Token(Symbol.GT);}
"<="		{ echo(); return new Token(Symbol.LE);}
">="		{ echo(); return new Token(Symbol.GE);}
"+"		{ echo(); return new Token(Symbol.PLUS);}
"-"		{ echo(); return new Token(Symbol.MINUS);}
"*"		{ echo(); return new Token(Symbol.TIMES);}
"/"		{ echo(); return new Token(Symbol.SLASH);}
"("		{ echo(); return new Token(Symbol.LPAREN);}
")"		{ echo(); return new Token(Symbol.RPAREN);}
"{"		{ echo(); return new Token(Symbol.LCURLY);}
"}"		{ echo(); return new Token(Symbol.RCURLY);}
"&&"		{ echo(); return new Token(Symbol.AMPERSAND);}
source 		{ echo(); return new Token(Symbol.SOURCE);}
function	{ echo(); return new Token(Symbol.FUNCTION);}
return		{ echo(); return new Token(Symbol.RETURN);}
main		{ echo(); return new Token(Symbol.MAIN);}
else		{ echo(); return new Token(Symbol.ELSE);}
if		{ echo(); return new Token(Symbol.IF);}
print		{ echo(); return new Token(Symbol.PRINT);}
as.integer	{ echo(); return new Token(Symbol.ASINT);}
readline	{ echo(); return new Token(Symbol.READLINE);}
cons		{ echo(); return new Token(Symbol.CONS);}
while		{ echo(); return new Token(Symbol.WHILE);}
head		{ echo(); return new Token(Symbol.HEAD);}
tail		{ echo(); return new Token(Symbol.TAIL);}
null		{ echo(); return new Token(Symbol.NULL);}
{Ident}		{ echo(); return new Token(Symbol.ID,yytext());}
{Integer}	{ echo(); return new Token(Symbol.INTEGER,yytext());}
{WhiteSpace}	{ echo();}
{Comment}	{ echo();}
{String}	{ echo(); return new Token(Symbol.STRING,yytext());}
.		{ echo(); ErrorMessage.print(yycolumn,"Illegal character");}
				
