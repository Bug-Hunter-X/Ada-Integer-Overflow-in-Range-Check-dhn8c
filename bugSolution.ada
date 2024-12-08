```ada
function Check_Range(Value : Integer) return Boolean is
begin
  if Value < Integer'First or else Value > Integer'Last then
     raise Constraint_Error;
  elsif Value < 10 then
    return False;
  elsif Value > 20 then
    return False;
  else
    return True;
  end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Num : Integer := 15;
begin
   begin
      if Check_Range(Num) then
         Put_Line("Number is within range");
      else
         Put_Line("Number is out of range");
      end if;
   exception
      when Constraint_Error =>
         Put_Line("Integer overflow detected!");
   end;
end Main;
```