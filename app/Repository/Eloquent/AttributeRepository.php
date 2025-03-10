<?php

namespace App\Repository\Eloquent;

use App\Models\Attribute;
use App\Models\Timesheet;

class AttributeRepository extends CrudRepository
{
        public function __construct(Attribute $model)
        {
            parent::__construct($model);
        }
}
