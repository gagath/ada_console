with Ada.Text_IO; use Ada.Text_IO;

package body Console is

    -- Local procedure to put control caracters on screen
    procedure Put_Control(s : in String) is
    begin
        Put(Character'Val(16#1B#) & "[" & s & "m");
    end Put_Control;

    procedure Set_Foreground(Color_Value : in Color) is
        Color_Integer : constant Integer := Color'Pos(Color_Value);
    begin
        Put_Control("3" & Integer'Image(Color_Integer));
    end Set_Foreground;

    procedure Set_Background(Color_Value : in Color) is
        Color_Integer : constant Integer := Color'Pos(Color_Value);
    begin
        Put_Control("4" & Integer'Image(Color_Integer));
    end Set_Background;

    procedure Set_Bold is
    begin
        Put_Control("1");
    end Set_Bold;

    procedure Set_Italic is
    begin
        Put_Control("6");
    end Set_Italic;

    procedure Set_Underline is
    begin
        Put_Control("4");
    end Set_Underline;

    procedure Set_Blink is
    begin
        Put_Control("5");
    end Set_Blink;

    procedure Set_Reverse is
    begin
        Put_Control("7");
    end Set_Reverse;

    procedure Set_Strike is
    begin
        Put_Control("9");
    end Set_Strike;

    procedure Reset is
    begin
        Put_Control("0");
    end Reset;

end Console;

