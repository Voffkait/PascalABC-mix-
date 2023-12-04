uses Robot;

var a:integer;
    b:integer;
    

begin

a:=0;
b:=1;

Task('mix3');

while CellIsFree do
begin
  left;down;
  a:=a+1;
end;
for a:=1 to a do
begin
  up;right;
end;

while b<(a+2) do
begin
  for a:=1 to a do left;
  for a:=1 to a do
  begin
    paint;right;
  end;
  paint;
  down;
  b:=b+1
end;
for a:=1 to (a+1) do up;
end.