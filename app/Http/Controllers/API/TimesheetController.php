<?php

namespace App\Http\Controllers\API;

use App\Http\Requests\API\FilterRequest;
use App\Http\Requests\API\TimesheetRequest;
use App\Repository\Eloquent\TimesheetRepository;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Auth;

class TimesheetController extends BaseController
{
    public function __construct(private readonly TimesheetRepository $repository)
    {
        //
    }

    public function index(FilterRequest $request): JsonResponse
    {
        return $this->sendResponse($this->repository->all($request), 'Timesheet retrieved successfully.');
    }

    public function show(FilterRequest $request, $id): JsonResponse
    {
        return $this->sendResponse($this->repository->find($id), 'Timesheet retrieved successfully.');
    }

    public function store(TimesheetRequest $request): JsonResponse
    {
        $data = $request->validated();

        $data['user_id'] = Auth::user()->id;

        $project = $this->repository->create($data);

        return $this->sendResponse($project, 'Timesheet created successfully', 201);
    }

    public function update(TimesheetRequest $request, $id): JsonResponse
    {
        $data = $request->validated();
        $project = $this->repository->find($id);

        return $this->sendResponse($this->repository->update($project, $data), 'Timesheet updated successfully.');
    }

    public function destroy($id): JsonResponse
    {
        $timesheet = $this->repository->find($id);

        return $this->sendResponse($this->repository->delete($timesheet), 'Timesheet deleted successfully.');
    }
}
