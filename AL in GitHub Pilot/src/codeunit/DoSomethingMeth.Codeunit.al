codeunit 50000 "DoSomething Meth"
{
    procedure TheMethod()
    var
        IsHandled: Boolean;
    begin
        OnBeforeTheMethod(IsHandled);

        DoTheMethod(IsHandled);

        OnAfterTheMethod();
    end;

    local procedure DoTheMethod(IsHandled: Boolean);
    begin
        if IsHandled then
            exit;
        Message('I am method');
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeTheMethod(var IsHandled: Boolean);
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterTheMethod();
    begin
    end;
}