//Token class definition for MicroR

public class Token{
	private Symbol symbol;
	private String lexeme;

	public Token() {}

	public Token(Symbol symbol){
		this(symbol,null);
	}
	public Token (Symbol symbol, String lexeme){

	this.symbol = symbol;
	this.lexeme = lexeme;
	}
	public Symbol symbol() { return symbol;}
	public String lexeme() { return lexeme;}

	public String toString(){
		switch(symbol){
			case PERIOD:	return "(punctuation, .)";
			case COMMA:	return "(punctuation, ,)";
			case SEMICOLON:	return "(punctuation, ;)";
			case ASSIGN:	return "(operator, <-)";
			case EQ:	return "(operator, =)";
			case NE:	return "(operator, !=)";		
			case LT:	return "(operator, <)";
			case GT:	return "(operator, >)";
			case LE:	return "(operator, <=)";
			case GE:	return "(operator, >=)";
			case PLUS:	return "(operator, +)";
			case MINUS:	return "(operator, -)";
			case TIMES:	return "(operator, *)";
			case SLASH:	return "(operator, /)";
			case LPAREN:	return "(operator, ()";
			case RPAREN:	return "(operator, ))";
			case LCURLY:	return "(operator, {)";
			case RCURLY:	return "(operator, })";
			case AMPERSAND: return "(operator, &&)";
			case SOURCE:	return "(keyword, source)";
			case MAIN:	return "(keyword, main)";
			case FUNCTION:	return "(keyword, function)";
			case IF:	return "(keyword, if)";
			case ELSE:	return "(keyword, else)";
			case RETURN:	return "(keyword, return)";
			case WHILE:	return "(keyword, while)";
			case PRINT:	return "(keyword, print)";
			case ASINT:	return "(keyword, as.integer)";
			case READLINE:	return "(keyword, readline)";
			case CONS:	return "(keyword, cons)";
			case HEAD:	return "(keyword, head)";
			case TAIL:	return "(keyword, tail)";
			case NULL:	return "(keyword, null)";
			case ID:	return "(identifier, "+lexeme+")";
			case INTEGER:	return "(integer, "+lexeme+ ")";
			case STRING: 	return "(string, " +lexeme+ ")";
			default:
					ErrorMessage.print(0,"Unrecognized token");
					return null;
							
		}			
	}
}


