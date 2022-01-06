table 50106 TeacherEntry
{
    DataClassification = ToBeClassified;
    Caption = 'Teacher Entry';

    fields
    {
        field(1; "Teacher ID"; Code[8])
        {
            DataClassification = CustomerContent;
            TableRelation = Teacher.ID;
            Caption = 'Teacher ID';

        }
        field(2; "Course ID"; Code[8])
        {
            DataClassification = CustomerContent;
            TableRelation = Course.ID;
            Caption = 'Course ID';

        }
        field(3; "Course Description"; Text[100])
        {
            TableRelation = Classroom;
            FieldClass = FlowField;
            CalcFormula = lookup(Course.Description where(ID = field("Course ID")));
            Caption = 'Course Description';
            Editable = false;
        }
        field(4; "Classroom ID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Classroom."Short Description";

        }
        field(5; "Classroom Name"; Text[100])
        {
            TableRelation = Classroom;
            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where("Short Description" = field("Classroom ID")));
            Caption = 'Classroom Name';
            Editable = false;

        }
    }

    keys
    {
        key(PK; "Teacher ID", "Course ID", "Classroom ID")
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