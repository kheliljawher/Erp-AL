table 50100 itbs
{
    DataClassification = CustomerContent;
    Caption = 'ITBS';
    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Phone; Code[13])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Fax; Code[13])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Adress; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(6; Posted; Boolean)
        {
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}