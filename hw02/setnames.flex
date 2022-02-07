

%%

%public
%class Subst
%standalone

%unicode

%{
  String[] names;
%}

LineTerminator = \r|\n|\r\n

%%
beginnames{LineTerminator}([A-Za-z]+{LineTerminator})*endnames{LineTerminator} {
  String[] lines = yytext().split("\r\n");
  for(int i=0; i<lines.length; i++){
    System.out.println();
  } 
  names = new String[lines.length-2];
  for(int i=0; i<names.length; i++){
    names[i] = lines[i+1];
  }
}
"names"     {System.out.print(String.join(" and ", names));}
