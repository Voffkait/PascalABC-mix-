uses Robot;

var a:integer;
    b:integer;
    

begin

a:=0;
b:=0;

Task('mix1');

paint;

while FreeFromRight do
begin
right;paint;
a:=a+1;
end;

while FreeFromDown do
begin
down;paint;
b:=b+1;
end;

for b:=1 to b do up;

while FreeFromDown do
begin

down;

for a:=1 to a do left;

paint;

while FreeFromRight do
begin
right;paint;
end;

end;

end.