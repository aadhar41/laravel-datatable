<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Models\Note;

class NotesController extends Controller
{

    private function notFoundMessage()
    {

        return [
            'code' => 404,
            'message' => 'Note not found',
            'success' => false,
        ];

    }

    private function successfulMessage($code, $message, $status, $count, $payload)
    {

        return [
            'code' => $code,
            'message' => $message,
            'success' => $status,
            'count' => $count,
            'data' => $payload,
        ];

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $rules = [
            'name' => 'required|string',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $response['data'] = $validator->messages();
            return $response;
        }

        $note = new Note;
        $note->name = $request->name;
        $note->save();
        $response = $this->successfulMessage(201, 'Successfully created', true, $note->count(), $note);
        return response($response);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function allNotes()
    {

        $notes = Note::all();
        $response = $this->successfulMessage(200, 'Successfully', true, $notes->count(), $notes);

        return response($response);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function permanentDelete($id)
    {
        $note = Note::destroy($id);
        if ($note) {

            $response = $this->successfulMessage(200, 'Successfully deleted', true, 0, $note);

        } else {

            $response = $this->notFoundMessage();
        }

        return response($response);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function softdelete($id)
    {
        $note = Note::destroy($id);
        if ($note) {

            $response = $this->successfulMessage(200, 'Successfully deleted', true, 0, $note);

        } else {

            $response = $this->notFoundMessage();
        }

        return response($response);
    }

    //returns both non-deleted and softdeleted
    public function notesWithSoftDelete()
    {

        $notes = Note::withTrashed()->get();
        $response = $this->successfulMessage(200, 'Successfully', true, $notes->count(), $notes);
        return response($response);

    }

    // Fetching only soft deleted notes
    public function softDeleted()
    {
        $notes = Note::onlyTrashed()->get();

        $response = $this->successfulMessage(200, 'Successfully', true, $notes->count(), $notes);
        return response($response);
    }


    // Restoring soft deleted notes
    public function restore($id)
    {

        $note = Note::onlyTrashed()->find($id);

        if (!is_null($note)) {

            $note->restore();
            $response = $this->successfulMessage(200, 'Successfully restored', true, $note->count(), $note);
        } else {

            return response($response);
        }
        return response($response);
    }
    

    // Permanent delete soft deleted notes
    public function permanentDeleteSoftDeleted($id)
    {
        $note = Note::onlyTrashed()->find($id);

        if (!is_null($note)) {

            $note->forceDelete();
            $response = $this->successfulMessage(200, 'Successfully deleted', true, 0, $note);
        } else {

            return response($response);
        }
        return response($response);
    }




}
