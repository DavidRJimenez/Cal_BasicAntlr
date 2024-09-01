grammar Expr;

/** The start rule; begin par... */

prog : stat + ;
stat : expr NEWLINE
    | ID '=' expr NEWLINE
    | NEWLINE
    ;

expr : expr op=('*'|'/') expr
    | expr op=('+'|'-') expr
    | INT
    | ID
    | '(' expr ')'
    ;

ID : [a-zA-Z]+ ;
INT : [0-9]+ ;
NEWLINE:'\r'? '\n' ;
WS : [ \t]+ -> skip ;
