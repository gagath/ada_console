
package Console is

    type Color is (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White);

    procedure Set_Foreground(Color_Value : in Color);
    procedure Set_Background(Color_Value : in Color);

    procedure Set_Bold;
    procedure Set_Italic;
    procedure Set_Underline;

    procedure Set_Blink;
    procedure Set_Reverse;
    procedure Set_Strike;

    procedure Reset;

end Console;
