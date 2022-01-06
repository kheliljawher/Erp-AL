page 50100 itbs
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = itbs;
    Caption = 'ITBS Liste Etudiants';
    CardPageId = itbscard;
    //InsertAllowed = false;
    //DeleteAllowed = false;
    //ModifyAllowed = false;
    SourceTableView = where(Posted = const(false));

    layout
    {
        area(Content)
        {

            repeater(loader)
            {
                Caption = 'General';
                ShowCaption = false;
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;

                }
                field(Fax; Rec.Fax)
                {
                    ApplicationArea = All;

                }
                field(Adress; Rec.Adress)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        myInt: Integer;
}