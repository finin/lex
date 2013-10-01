/*
 A scanner for a Anaconda integers. Outputs lines like
 "token: lexeme", for example "decimal_integer: +12".
*/

%{
%}

/* your definitions go here */

%%

"#".*\n               printf("COMMENT: %s", yytext);
[ \t\n]+              /* skip space, tab and newline */
.                     printf("ignore: %s\n", yytext);

%%

main(argc, argv)
  int argc; char **argv;
  { 
    if (argc>1) yyin=fopen(argv[1],"r"); else yyin=stdin;
    yylex();
  }

