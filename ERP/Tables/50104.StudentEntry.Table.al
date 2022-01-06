table 50104 "Student Entry"
{
    DataClassification = ToBeClassified;
    Caption = 'Student Entry';
    fields
    {
        field(1; "Student CIN"; Code[8])
        {
            DataClassification = CustomerContent;
            TableRelation = Student;
            Caption = 'Student CIN';
        }
        field(2; "Course ID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Course;
            Caption = 'Courses ID';
        }
        field(3; "Classroom ID"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Classroom."Short Description";
        }
        field(4; Mark; Decimal)
        {
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 20;
            Caption = 'Mark';
        }
        field(5; "Course Description"; Text[50])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Course.Description where(ID = field("Course ID")));
            Caption = 'Course Description';
            Editable = false;
        }
        field(6; "Classroom Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where("Short Description" = field("Classroom ID")));
            Caption = 'Classroom Name';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Student CIN", "Course ID", Mark)
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