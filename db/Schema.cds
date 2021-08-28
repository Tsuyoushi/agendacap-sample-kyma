namespace schedule;

using {
    Currency,
    managed
} from '@sap/cds/common';

entity ScheduleType : managed {
    key ID          : UUID      @(Core.Computed : true)  @title : 'Key';
        description : String(50)@Common.Label :                   'Description';
        dateInit    : DateTime  @Common.Label :                   'Initial';
        dateEnd     : DateTime  @Common.Label :                   'End';
        actionId    : Association to ActionType;
}

entity ActionType : managed {
    key ActionID    : String(1);
        description : String(50);
        enabled     : Boolean;
}
