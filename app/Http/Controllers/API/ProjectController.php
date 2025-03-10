<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\FilterRequest;
use App\Http\Requests\API\ProjectCreateRequest;
use App\Http\Requests\API\ProjectUpdateRequest;
use App\Repository\Eloquent\AttributeValueRepository;
use App\Repository\Eloquent\ProjectRepository;
use Illuminate\Http\JsonResponse;

class ProjectController extends BaseController
{
    public function __construct(
        private readonly ProjectRepository $repository,
        private readonly AttributeValueRepository $attributeValueRepository
    ) {
        //
    }

    public function index(FilterRequest $request): JsonResponse
    {
        return $this->sendResponse($this->repository->all($request), 'Projects retrieved successfully.');
    }

    public function show(FilterRequest $request, $id): JsonResponse
    {
        return $this->sendResponse($this->repository->find($id), 'Project retrieved successfully.');
    }

    public function store(ProjectCreateRequest $request): JsonResponse
    {
        $data = $request->validated();

        $project = $this->repository->create($data);

        if (isset($data['attributes'])) {
            $this->attributeValueRepository->createMany($project->id, $data['attributes']);
        }

        return $this->sendResponse($project, 'Project created successfully', 201);
    }

    public function update(ProjectUpdateRequest $request, $id): JsonResponse
    {
        $data = $request->validated();
        $project = $this->repository->find($id);

        if (isset($data['attributes'])) {
            $this->attributeValueRepository->updateCreate($project->id, $data['attributes']);
        }

        return $this->sendResponse($this->repository->update($project, $data), 'Project updated successfully.');
    }

    public function destroy($id): JsonResponse
    {
        $project = $this->repository->find($id);

        return $this->sendResponse($this->repository->delete($project), 'Project deleted successfully.');
    }
}
