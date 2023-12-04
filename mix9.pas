uses Robot;

procedure Start;
var a:integer;
    b:integer;
begin
  a:=1;
  b:=0;
  paint;down;
  while CellIsFree do
  begin
    if FreeFromLeft then 
    begin
      left;
    end;
    if WallFromLeft then
    begin
      down;
      a:=a+1;
      while FreeFromRight do right;
    end;
    print(a);
  end;
  
  for a:=1 to a do 
  begin
    up;
  end;
  
  while CellIsFree do
  begin
    right;
    b:=b+1;
    print(b);
  end;


begin
  for b:=0 to b do
  begin
    for a:=1 to a do
    begin
      down;paint;
    end;
    for a:=1 to a do up;
    paint;left;
  end;
  for b:=0 to b do right;
end;
end;
var a:integer;
    b:integer;
begin
  Task('mix9');
  Start;
end.