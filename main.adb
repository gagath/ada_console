with Ada.Text_IO; use Ada.Text_IO;

with Console; use Console;

procedure Main is
begin

    Set_Italic;

    for Color1 in Color'First..Color'Last loop
        for Color2 in Color'First..Color'Last loop
            Set_Background(Color1);
            Set_Foreground(Color2);
            Put(Color'Image(Color2));
            Reset;
            Put("    ");
        end loop;
        New_Line;
    end loop;

    Reset;

end Main;
