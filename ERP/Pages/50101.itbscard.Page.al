page 50101 itbscard
{
    PageType = Card;
    //ApplicationArea = All;
    //UsageCategory = Lists;
    SourceTable = itbs;
    Caption = 'ITBS Fiche Etudiants';

    layout
    {
        area(Content)
        {

            group(loader)
            {
                Editable = Not Rec.Posted;
                field(ID;
                rec.ID)
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
                Caption = 'Post';

                ApplicationArea = All;
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    ITBSPostedCard_L: Page "itbs posted card";
                    text000: Label 'Vous les vous ouvrir la ligne validee ?';
                begin
                    rec.Posted := true;
                    if Rec.Modify() then begin
                        if Dialog.Confirm(text000, true) then begin
                            ITBSPostedCard_L.SetRecord(rec);
                            ITBSPostedCard_L.Run();
                        end;
                    end;
                end;
            }
        }
    }

    var
        myInt: Integer;
}