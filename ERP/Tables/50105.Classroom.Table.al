table 50105 Classroom
{
    DataClassification = ToBeClassified;
    Caption = 'Classroom';
    fields
    {
        field(1; "Short Description"; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Short Description';

        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Pk; "Short Description")
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