page 50107 "Student Entry"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Student Entry";
    Caption = 'Student Entry';
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Student CIN"; Rec."Student CIN")
                {
                    ApplicationArea = All;
                    Visible = false;

                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Course Description"; Rec."Course Description")
                {
                    ApplicationArea = All;

                }
                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;

                }

            }
        }

    }


}