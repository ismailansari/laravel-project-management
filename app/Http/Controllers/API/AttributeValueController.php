<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\AttributeSaveRequest;
use App\Http\Requests\API\AttributeValueSaveRequest;
use App\Http\Requests\API\FilterRequest;
use App\Repository\Eloquent\AttributeValueRepository;
use Illuminate\Http\JsonResponse;

class AttributeValueController extends BaseController
{
    public function __construct(private readonly AttributeValueRepository $repository)
    {
        //
    }

    public function index(FilterRequest $request): JsonResponse
    {
        return $this->sendResponse($this->repository->all($request), 'Attribute Value retrieved successfully.');
    }

    public function show($id): JsonResponse
    {
        return $this->sendResponse($this->repository->find($id), 'Attribute Value retrieved successfully.');
    }

    public function store(AttributeValueSaveRequest $request): JsonResponse
    {
        $data = $request->validated();

        $attribute = $this->repository->create($data);

        return $this->sendResponse($attribute, 'Attribute Value created successfully', 201);
    }

    public function update(AttributeValueSaveRequest $request, $id): JsonResponse
    {
        $data = $request->validated();
        $attribute = $this->repository->find($id);

        return $this->sendResponse($this->repository->update($attribute, $data), 'Attribute Value updated successfully.');
    }

    public function destroy($id): JsonResponse
    {
        $attribute = $this->repository->find($id);

        return $this->sendResponse($this->repository->delete($attribute), 'Attribute Value deleted successfully.');
    }
}
