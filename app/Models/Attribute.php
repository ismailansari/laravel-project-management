<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Attribute extends Model
{
    use HasFactory;

    public const TYPES = ['text', 'date', 'number', 'select'];

    protected $fillable = [
        'name',
        'type',
    ];

    public function getUpdatable()
    {
        return [
            'name',
            'type',
        ];
    }

    public function attributeValues(): HasMany
    {
        return $this->hasMany(AttributeValue::class);
    }
}
