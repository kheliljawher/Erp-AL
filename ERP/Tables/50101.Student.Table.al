table 50101 Student
{
    DataClassification = CustomerContent;
    Caption = 'Student';
    fields
    {
        field(1; CIN; Code[8])
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
        field(7; "Created At"; Date)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(8; "Created By"; Code[50])
        {
            DataClassification = CustomerContent;
            Editable = false;

        }
        field(9; "Classroom"; Code[20])
        {
            Caption = 'Classroom';
            DataClassification = CustomerContent;
            TableRelation = Classroom."Short Description";

        }
        field(10; "Classroom Description"; Text[100])
        {
            Caption = 'Classroom Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where("Short Description" = field(Classroom)));
            Editable = false;

        }
    }

    keys
    {
        key(PK; CIN)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

        Rec."Created By" := UserId;
        Rec."Created At" := WorkDate();

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