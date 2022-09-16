

pageextension 50000 "CustomerListExt" extends "Customer List"
{

    trigger OnOpenPage();
    var
        DoSomething: Codeunit "DoSomething Meth";
    begin
        DoSomething.TheMethod();
    end;


}
