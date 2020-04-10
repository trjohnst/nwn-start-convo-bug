#include "x2_inc_switches"

void main()
{
    int nEvent = GetUserDefinedItemEventNumber(); //Which event triggered this
    object oActivator;
    object oItem;
    object oTarget;
    string sDlg = "someconvo";

    switch (nEvent)
    {
        case X2_ITEM_EVENT_ACTIVATE:
            oActivator = GetItemActivator();
            oItem = GetItemActivated();
            oTarget = GetItemActivatedTarget();


            SendMessageToPC(oActivator, "thing activated by |" + GetName(oActivator) + "|");
            SendMessageToPC(oActivator, "to talk to |" + GetName(oTarget) + "|");

            AssignCommand(
                oTarget,
                ActionStartConversation(oActivator, sDlg)
            );
            break;
    }
}
