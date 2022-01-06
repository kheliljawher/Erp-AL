page 50103 "itbs posted card"
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = itbs;
    Editable = false;

    layout
    {
        area(Content)
        {

            group(General)
            {
                Caption = 'General';
                field(ID; rec.ID)
                {
                    ApplicationArea = All;

                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Phone; rec.Phone)
                {
                    ApplicationArea = All;

                }
                field(Fax; rec.Fax)
                {
                    ApplicationArea = All;

                }
                field(Adress; rec.Adress)
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
            action(ActionName)
            {
                Caption = 'Delete';

                ApplicationArea = All;
                Image = Delete;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    rec.Posted := false;
                    Rec.Modify();
                end;
            }
        }
    }

    var
        myInt: Integer;
}