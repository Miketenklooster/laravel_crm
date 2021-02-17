<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use App\Nova\Actions\WeFactAPI;
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

            // (new User($model))->send();
            // return Action::message('It worked!');
            $fullname = $model->name;
            $fullname = trim($fullname); // remove double space
            $firstname = substr($fullname, 0, strpos($fullname, ' '));
            $lastname = substr($fullname, strpos($fullname, ' '), strlen($fullname));
            $parameters = [
                "CompanyName" => $model->company_name,
                "Initials" => $firstname,
                "SurName" => $lastname,
                "Address" => $model->street . ' ' . $model->house_number,
                "ZipCode" => $model->postal_code,
                "City" => $model->city,
                "Country" => "NL",
                "EmailAddress" => $model->email,
                "PhoneNumber" => $model->phone_number
            ];
            
            $response = $api->sendRequest('creditor', 'add', $parameters);
            return $response;
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
