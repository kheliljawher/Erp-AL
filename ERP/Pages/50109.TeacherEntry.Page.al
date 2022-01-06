page 50109 TeacherEntry
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = TeacherEntry;
    Caption = 'Teacher Entry';
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Teacher ID"; Rec."Teacher ID")
                {
                    ApplicationArea = All;
                    Visible = false;

                }
                field("Course ID"; Rec."Course ID")
                {
                    ApplicationArea = All;
                    Visible = false;

                }
                field("Classroom Name"; Rec."Classroom Name")
                {
                    ApplicationArea = All;

                }
                field("Classroom ID"; Rec."Classroom ID")
                {
                    ApplicationArea = All;

                }
                field("Course Description"; Rec."Course Description")
                {
                    ApplicationArea = All;


                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Mark")
            {
                ApplicationArea = All;
                Caption = 'Mark';
                Promoted = true;
                PromotedCategory = Process;
                Image = AddWatch;
                RunObject = page "Mark Student";
                //RunPageLink = "Short Description" = field("Classroom ID");

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}