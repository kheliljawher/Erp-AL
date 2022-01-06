page 50104 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    CardPageId = "Student Card";
    Caption = 'Student List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field(CIN; Rec.CIN)
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
                field("Created At"; Rec."Created At")
                {
                    ApplicationArea = All;
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

        }
    }


}