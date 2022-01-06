page 50102 "ITBS Posted"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = itbs;
    Caption = 'ITBS Posted List';
    CardPageId = "itbs posted card";
    SourceTableView = where(Posted = const(false));
    InsertAllowed = false;
    DeleteAllowed = false;
    ModifyAllowed = false;
    Editable = false;


    layout
    {
        area(Content)
        {

            repeater(loader)
            {
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