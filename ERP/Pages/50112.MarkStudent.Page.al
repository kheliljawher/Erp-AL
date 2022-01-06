page 50112 "Mark Student"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Student Entry";
    InsertAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Student CIN"; Rec."Student CIN")
                {
                    ApplicationArea = All;
                    Caption = 'Student CIN';
                    //Editable = false;

                }
                field(Mark; Rec.Mark)
                {
                    ApplicationArea = All;
                    Caption = 'Mark';

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}