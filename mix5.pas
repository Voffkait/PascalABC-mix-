uses Robot;
procedure krest;
var n:integer;
    b:integer;
begin
  n:=0;
  b:=0;
  while FreeFromLeft do
  begin
    left;paint;
    n:=n+1;
  end;
  for n:=1 to n do right;
  n:=0;
  while FreeFromRight do
  begin
    right;paint;
    n:=n+1;
  end;
  for n:=1 to n do left;
  while FreeFromUp do
  begin
    up;paint;
    b:=b+1;
  end;
  for b:=1 to b do down;
  b:=0;
  while FreeFromDown do
  begin
    down;paint;
    b:=b+1;
  end;
  for b:=1 to b do up;
end;
begin
Task('mix5');
while FreeFromDown do down;
while FreeFromLeft do left;
while CellIsFree and CellIsFree do
begin
while FreeFromRight and CellIsFree do
begin
  if FreeFromRight then right;
  if CellIsPainted then 
  begin
  krest();
  exit;
  end;
end;
up;
while FreeFromLeft do
begin
if FreeFromLeft then left;
if CellIsPainted then 
begin
  krest();
  exit;
  end;
end;
up;
end;
end.