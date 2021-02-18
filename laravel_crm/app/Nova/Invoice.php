<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Currency;
use Laravel\Nova\Fields\Textarea;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Http\Requests\NovaRequest;

class Invoice extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Invoice::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'product_code',
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make(__('ID'), 'id')->sortable(),

            Select::make('Customer id')
            ->rules('required')
            ->options(\App\Models\Customer::pluck('name', 'id'))
            ->searchable(),

            Text::make('Term')
            ->rules('required', 'max:255'),

            Select::make('Product code')
            ->rules('required')
            ->options(\App\Models\Product::pluck('name', 'id'))
            ->searchable(),

            Textarea::make('Key phrase')
                ->sortable()
                ->rules('required', 'max:255')
                ->displayUsing(function ($text) {
                    if (strlen($text) > 30) {
                        return substr($text, 0, 30) . '...';
                    }
                    return $text;
                }),

            Currency::make('Amount paid')
                ->rules('required')
                ->currency('EUR')
                ->displayUsing(function($amount){
                    return number_format((float) $amount, 2);
                }),

            Select::make('Payment method')
                ->rules('required')
                ->options([
                    'wire' => 'Bankoverschrijving',
                    'cash' => 'Contante betaling',
                    'card' => 'Betaling via pin',
                    'auth' => 'Automatische incasso',
                    'accounting' => 'Via boekhoudpakket',
                    'various' => 'Verschillende betaalmethoden',
                    'paypal' => 'PayPal',
                    'ideal' => 'iDEAL',
                    'qrcode' => 'QR Code',
                    'other' => 'Online betaalmethode',
                ])->displayUsingLabels(),

            DateTime::make('Pay date')
                ->rules('required')
                ->pickerDisplayFormat('d.m.Y'),

            Textarea::make('Description')
                ->rules('required')
                ->onlyOnForms(),

            Text::make('Comment')
                ->rules('required', 'max:255'),

            Select::make('Status')
                ->rules('required')
                ->options([
                    '0' => 'Concept factuur',
                    '2' => 'Verzonden',
                    '3' => 'Deels betaald',
                    '4' => 'Betaald',
                    '8' => 'Creditfactuur',
                    '9' => 'Vervallen',
                ])->displayUsingLabels(),

        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function cards(Request $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function filters(Request $request)
    {
        return [];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function lenses(Request $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function actions(Request $request)
    {
        return [];
    }
}
