<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use App\Models\Customer;
use App\Models\Product;
use App\Nova\WeFactAPI;

class AddInvoiceToWeFact extends Action
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
            // $parameters = [
            //     "DebtorCode" => "1"
            // ];
            
            // return $api->sendRequest('debtor', 'show', $parameters);
            
            // $customer = Customer::find($model->customer_id);
            $product = Product::find($model->product_code);
            $parameters = [
                "InvoiceCode" => $model->id,
                "DebtorCode" => $model->customer_id,
                "AmountPaid" => $model->amount_paid,
                "PaymentMethod" => $model->payment_method,
                "PayDate" => $model->pay_date,
                "Description" => $model->description,
                "Comment" => $model->comment,
                "Status" => $model->status,
                "InvoiceLines" => [
                    [
                        "ProductCode" => $model->product_code,
                    ],
                ]
            ];
            
            $response = $api->sendRequest('invoice', 'add', $parameters);
            return $response;
            // return Action::message('Invoice has been added!');
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
