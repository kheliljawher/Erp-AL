page 50110 Teacher
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Teacher;
    Caption = 'Teacher List';
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field("Fisrst Name"; Rec."Fisrst Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;

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