uses Robot;

begin

Task('mix6');

while FreeFromDown do
begin
  if CellIsFree then down;
  if CellIsPainted then
  begin
    while FreeFromRight do right;
    paint;
    while FreeFromLeft do left;
    down;
  end;
end;

end.