<?php

namespace App\Traits;

use App\ProfileRelatives;
use App\ResumeSingleQuestions;
use Auth;
use DB;
use Input;
use Carbon\Carbon;
use Redirect;
use App\User;
use App\ProfileExperience;
use App\Country;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Http\Requests\ProfileExperienceFormRequest;
use App\Http\Requests\ProfileRelativeFormRequest;
use App\Helpers\DataArrayHelper;

trait ProfileRelativesTrait
{

    public function showProfileRelative(Request $request, $user_id)
    {
        $user = ResumeSingleQuestions::find($user_id);
        $profile_relative = ProfileRelatives::where(['user_id' => $user_id])->get();


        $returnHTML = view('user.forms.relative.relativeprofile',compact(
            'user',
                  'profile_relative'
        ));
        return $returnHTML;
    }


    public function getFrontProfileRelativeForm(Request $request, $user_id)
    {
        $user = User::find($user_id);
        $returnHTML = view('user.forms.relative.relative_modal')
            ->with('user', $user)
            ->render();
        return response()->json(array('success' => true, 'html' => $returnHTML));
    }

    public function storeProfileRelative(ProfileRelativeFormRequest $request, $user_id)
    {

        $profileRelative= new ProfileRelatives();
        $profileRelative = $this->assignRelativeValues($profileRelative, $request, $user_id);
        $profileRelative->save();
        $returnHTML = view('user.forms.relative.relative_thanks')->render();
        return response()->json(array('success' => true, 'status' => 200, 'html' => $returnHTML), 200);
    }

    private function assignRelativeValues($profileRelative, $request, $user_id)
    {
        $profileRelative->full_name = $request->input('full_name');
        $profileRelative->type_relative = $request->input('type_relative');
        $profileRelative->name_organization = $request->input('name_organization');
        $profileRelative->position = $request->input('position');
        $profileRelative->user_id = $user_id;
        return $profileRelative;
    }

    public function deleteProfileRelative(Request $request)
    {
        $id = $request->input('id');
        echo $this->removeProfileRelative($id);
    }



    private function removeProfileRelative($id)
    {
        try {
            $profileEducation = ProfileRelatives::findOrFail($id);
            $profileEducation->delete();
            return 'ok';
        } catch (ModelNotFoundException $e) {
            return 'notok';
        }
    }
    public function getFrontRelativeEditForm(Request $request,$id)
    {

//        $id = $request->input('id');
        $profileRelative = ProfileRelatives::find($id);

        $returnHTML = view('user.forms.relative.relative_edit_modal')
            ->with('profileRelative', $profileRelative)
            ->render();
        return response()->json(array('success' => true, 'html' => $returnHTML));
    }
    public function updateFrontProfileRelative(ProfileRelativeFormRequest $request, $id,$user_id)
    {
        $profileEducation = ProfileRelatives::find($id);
        $profileEducation = $this->assignEducationValues($profileEducation,$request, $user_id);
        $profileEducation->update();
        /*         * ************************************ */
        /*         * ************************************ */

        $returnHTML = view('user.forms.relative.relative_thanks')->render();
        return response()->json(array('success' => true, 'status' => 200, 'html' => $returnHTML), 200);
    }





}
