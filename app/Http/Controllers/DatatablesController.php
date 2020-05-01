<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
// use Datatables;
use Yajra\Datatables\Datatables;

class DatatablesController extends Controller
{
    /**
     * Displays datatables front end view
     *
     * @return \Illuminate\View\View
     */
    public function index()
    {
        $title = "Data";
        return view('data.index',compact('title'));
    }

    /**
     * Process datatables ajax request.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function datatable(Request $request)
    {
        // return Datatables::of(User::query())->make(true);

    	$userdata = User::select('users.id','users.name','users.email','users.role','users.status','users.created_at', 'users.updated_at');
            
        return DataTables::of($userdata)
            ->filter(function ($query) use ($request) {
                if ($request->has('role') && $request->get('role') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('users.role', 'like', "%{$request->get('role')}%");
                    });
                }
                if ($request->has('status') && $request->get('status') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('users.status', 'like', "%{$request->get('status')}%");
                    });
                }
     
                if ($request->has('name') && $request->get('name') != '') {
                    $query->where(function ($q) use ($request) {
                        $q->where('users.name', 'like', "%{$request->get('name')}%");
                    });
                }
            })
            ->addColumn('role', function ($userdata) {
                  return $role = ($userdata->role==0) ? 'Admin' : 'User' ;;
            })
            ->addColumn('status', function ($userdata) {
                  return $status = ($userdata->status==1) ? 'Active' : 'Inactive' ;;
            })
            ->addColumn('action', function ($userdata) {
               $link = '<a href="' . route('data.delete', $userdata->id) . '" class="btn btn-xs btn-danger"><i class="fas fa-eye"></i> Delete</a> ';
                return $link;
            })
            ->make(true);

    }


	/**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // echo $id; die();
        $user = User::find($id);
        $user->delete();
    
    	// return view('data.index',compact('title'));
        return redirect('data')->with('error', 'Band Removed.');
    }


}
