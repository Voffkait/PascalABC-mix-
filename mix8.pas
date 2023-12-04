uses Robot;
var n:integer;
begin

n:=0;

Task('mix8');

while FreeFromDown do
begin
  if CellIsFree then down;
  if CellIsPainted then
  begin
    right;
    while FreeFromRight and CellIsFree do right;
    while FreeFromRight and CellIsPainted do
    begin
      n:=n+1;
      right;
    end;
    while FreeFromRight and CellIsFree do right;
    if CellIsPainted then
    begin
      if n<>1 then
        begin;
      while FreeFromLeft do
      begin
        left;paint;
      end;
    
    if n<>0 then
    begin
      While FreeFromLeft do left;
    end;
    end;
    if CellIsFree then
      begin
    while FreeFromLeft do left;
    end;
    down;
  end;
end;
end;
end.