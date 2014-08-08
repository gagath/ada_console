with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed;

package body Console is

    use Ada.Strings.Fixed;

    -- Local procedure to put control caracters on screen
    procedure Put_Control(S : in String) is
    begin
        Put(Character'Val(16#1B#) & "[" & S & "m");
    end Put_Control;

    procedure Set_Foreground(Color_Value : in Color) is
        Color_Integer : constant Integer := Color'Pos(Color_Value);
        Image : constant String := Integer'Image(Color_Integer);
        Trimmed_Image : constant String := Trim(Image, Ada.Strings.Left);
    begin
        Put_Control("3" & Trimmed_Image);
    end Set_Foreground;

    procedure Set_Background(Color_Value : in Color) is
        Color_Integer : constant Integer := Color'Pos(Color_Value);
        Image : constant String := Integer'Image(Color_Integer);
        Trimmed_Image : constant String := Trim(Image, Ada.Strings.Left);
    begin
        Put_Control("4" & Trimmed_Image);
    end Set_Background;

    procedure Set_Bold is
    begin
        Put_Control("1");
    end Set_Bold;

    procedure Set_Italic is
    begin
        Put_Control("3");
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

