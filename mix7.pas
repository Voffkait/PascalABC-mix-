uses Robot;
begin
Task('mix7');
while FreeFromDown do
begin
  if CellIsFree then down;
  if CellIsPainted then
  begin
    while FreeFromRight do right;
    if CellIsPainted then
    begin
      while FreeFromLeft do
      begin
        left;paint;
      end;
    end;
    if CellIsFree then
      begin
    while FreeFromLeft do left;
    end;
    down;
  end;
end;
end.