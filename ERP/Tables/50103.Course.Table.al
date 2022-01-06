table 50103 Course
{
    DataClassification = CustomerContent;
    Caption = 'Course';
    fields
    {
        field(1; ID; Code[8])
        {
            DataClassification = CustomerContent;

        }
        field(2; Description; Text[50])
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