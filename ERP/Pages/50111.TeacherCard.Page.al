page 50111 TeacherCard
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Teacher Card';
    layout
    {
        area(Content)
        {
            group("Personal information")
            {

                Caption = 'Personal Information';
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
            action("Courses/Classroom")
            {
                ApplicationArea = All;
                Caption = 'Courses/Classroom';
                Promoted = true;
                PromotedCategory = Process;
                Image = ListPage;
                RunObject = page "TeacherEntry";
                RunPageLink = "Teacher ID" = field(ID);


            }
        }
    }

}