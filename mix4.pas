uses Robot;

begin

Task('mix4');

while FreeFromDown do down;
while FreeFromLeft do left;

while CellIsFree and CellIsFree do
begin
while FreeFromRight and CellIsFree do
begin
  if FreeFromRight then right;
  if CellIsPainted then exit;
end;

up;

while FreeFromLeft do
begin
if FreeFromLeft then left;
if CellIsPainted then exit;
end;
up;


end;
end.