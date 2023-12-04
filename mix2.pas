uses Robot;

var a:integer;
    b:integer;
    

begin

a:=0;
b:=0;

Task('mix2');
while FreeFromDown do
  begin
while FreeFromRight do
begin
  
  paint;right;
  a:=a+1;
  if FreeFromRight then
  begin
    right;
    a:=a+1;
    
  end;
  if a mod  2 = 0 then paint;
  
  print(a);
end;

for a:=1 to a do left;
a:=0;
if FreeFromDown then 
begin
  down;
right;paint;
b:=b+1;
  print(b)
end;

while FreeFromRight do
begin
  
  paint;right;
  a:=a+1;
  if FreeFromRight then
  begin
    right;
    a:=a+1;
    
  end;
  if a mod  2 = 0 then paint;
  print(a);
end;
for a:=1 to a do left;
a:=0;
left;
if FreeFromDown then
begin
  down;
  b:=b+1;
  print(b)
  end;
  
end;
if b mod 2 = 0 then
begin
  paint;right;
  a:=a+1;
  if FreeFromRight then
  begin
    right;
    a:=a+1;
  end;
  if a mod  2 = 0 then paint;
  print(a);
  
end;
while FreeFromRight do right;
end.