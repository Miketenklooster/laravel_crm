<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use App\Nova\WeFactAPI;
use App\Models\User;
// require_once("../wefact_api.php");

class AddAccountToWeFact extends Action
{
    use InteractsWithQueue, Queueable;
    public $name = 'Add to WeFact';

    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        // make a new api instance
        $api = new WeFactAPI();
        // add user(s) to WeFact
        foreach ($models as $model) {
        // return dd($api);
            $model->country = ($model->country) ? $model->country : "NL";
            $model->gender = ($model->gender) ? $model->gender : "m";
            $fullname = $model->name;
            $fullname = trim($fullname); // remove double space
            $initials = substr($fullname, 0, strpos($fullname, ' '));
            $surname = substr($fullname, strpos($fullname, ' '), strlen($fullname));
            $parameters = [
                "DebtorCode" => $model->id,
                "CompanyName" => $model->company_name,
                "Initials" => $initials,
                "SurName" => $surname,
                "Sex" => $model->gender,
                "Address" => $model->street . ' ' . $model->house_number,
                "ZipCode" => $model->postal_code,
                "City" => $model->city,
                "Country" => $model->country,
                "EmailAddress" => $model->email,
                "PhoneNumber" => $model->phone_number
            ];
            
            $response = $api->sendRequest('debtor', 'add', $parameters);
            return $response;
            // return Action::message('It worked!');
        }
        
    }

    /**
     * Get the fields available on the action.
     *
     * @return array
     */
    public function fields()
    {
        return [];
    }
}
