<?php

namespace App\Repository\Eloquent;

use App\Models\Timesheet;

class TimesheetRepository extends CrudRepository
{
    public function __construct(Timesheet $model)
    {
        parent::__construct($model);
    }
}
