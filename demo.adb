with Ada.Text_IO; use Ada.Text_io;
with Console; use Console;

procedure Demo is
begin
    Put_Line("Text attributes :");
    New_Line;

    Put_Line("  Normal");

    Put("  ");
    Set_Bold;
    Put_Line("bold");
    Reset;

    Put("  ");
    Set_Italic;
    Put_Line("italic");
    Reset;

    Put("  ");
    Set_Underline;
    Put_Line("underline");
    Reset;

    Put("  ");
    Set_Blink;
    Put_Line("blink");
    Reset;

    Put("  ");
    Set_Reverse;
    Put_Line("reverse");
    Reset;

    Put("  ");
    Set_Strike;
    Put_Line("strike");
    Reset;

    New_Line;
    Put_Line("Foreground colors :");
    New_Line;

    for C in Color'Range loop
        Set_Foreground(C);
        Put("  ");
        Put_Line(Color'Image(C));
        Reset;
    end loop;

    New_Line;
    Put_Line("Background colors :");
    New_Line;

    for C in Color'Range loop
        Put("  ");
        Set_Background(C);
        Put(Color'Image(C));
        Reset;
        New_Line;
    end loop;

    New_Line;

end Demo;
