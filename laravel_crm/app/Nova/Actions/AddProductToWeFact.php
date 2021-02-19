<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use App\Nova\WeFactAPI;

class AddProductToWeFact extends Action
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

        foreach ($models as $model) {
            $parameters = [
                "ProductCode" => $model->id,
                "ProductName" => $model->name,
                "ProductKeyPhrase" => $model->key_phrase,
                "PriceExcl" => $model->budget,
            ];

            $response = $api->sendRequest('product', 'add', $parameters);
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
