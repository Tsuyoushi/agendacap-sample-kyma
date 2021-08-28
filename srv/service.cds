using schedule as sche from '../db/Schema';

@path: 'service/cap'

service Calendar {
    entity Schedule as select from sche.ScheduleType excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    };

    entity Action as select from sche.ActionType excluding {
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy
    };
}