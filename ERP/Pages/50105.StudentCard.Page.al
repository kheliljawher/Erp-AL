page 50105 "Student Card"
{
    PageType = Card;
    SourceTable = Student;
    Caption = 'Student Card';

    layout
    {
        area(Content)
        {
            group("Personal Informations")
            {
                Caption = 'Personal Information';
                field(CIN; REC.CIN)
                {
                    ApplicationArea = All;

                }
                field("Fisrst Name"; REC."Fisrst Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; REC."Last Name")
                {
                    ApplicationArea = All;

                }
                field(Adress; REC.Adress)
                {
                    ApplicationArea = All;

                }
                field(Phone; REC.Phone)
                {
                    ApplicationArea = All;

                }
                field(Country; REC.Country)
                {
                    ApplicationArea = All;

                }
                field("Created At"; REC."Created At")
                {
                    ApplicationArea = All;

                }
                field("Created By"; REC."Created By")
                {
                    ApplicationArea = All;

                }
                field(Classroom; REC.Classroom)
                {
                    ApplicationArea = All;
                    trigger OnValidate()

                    begin
                        CurrPage.Update();
                    end;

                }
                field("Classroom Description"; REC."Classroom Description")
                {
                    ApplicationArea = All;

                }
            }
            /*part("Student Entry"; "Student Entry")
            {
                SubPageLink = "Student CIN" = field(CIN);
            }*/
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}