/*package de.jflex.example.standalone;*/

%%

%public
%class Subst
%standalone

%unicode

%{
  String name;
%}

%%

"setname " [a-zA-Z]+  { name = yytext().substring(8); }
"name"        { System.out.print(name); }
