table 50102 Teacher
{
    DataClassification = CustomerContent;
    Caption = 'Teacher';
    fields
    {
        field(1; ID; Code[8])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Fisrst Name"; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(4; Adress; Text[100])
        {
            DataClassification = CustomerContent;

        }
        field(5; Phone; Code[13])
        {
            DataClassification = CustomerContent;

        }
        field(6; Country; Code[13])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";

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