<?php

namespace App\Nova;

use Laravel\Nova\Panel;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\BelongsTo;

class Customer extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Customer::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'name';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'company_name', 'name', 'email',
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
            ID::make()->sortable(),

            Text::make('Company name')
                ->sortable()
                ->rules('required', 'max:255'),

            Text::make('Name')
                ->sortable()
                ->rules('required', 'max:255'),

            Select::make('Gender')->options([
                    'm' => 'Male',
                    'f' => 'Female',
                    'd' => 'Transgender',
            ])->displayUsingLabels(),

            Text::make('Email')
                ->sortable()
                ->rules('required', 'email', 'max:254')
                ->creationRules('unique:users,email')
                ->updateRules('unique:users,email,{{resourceId}}'),

            Text::make('Phone number')
                ->rules('required', 'max:20'),
          
            (new Panel('Address information', [
                Text::make('City')
                    ->rules('required', 'max:255'),

                Text::make('Street')
                    ->rules('required', 'max:255'),

                Text::make('House number')
                    ->rules('required', 'max:10'),

                Text::make('Postal code')
                    ->rules('required', 'max:35'),
            ])),

            BelongsTo::make('Product code', 'product_relationship', 'App\Nova\Product')
            ->rules('required')
            ->searchable(),

            // Select::make('Product code')
            //     ->rules('required')
            //     ->options(\App\Models\Product::pluck('name', 'id'))
            //     ->searchable()
            //     ->displayUsing(function ($name) {
            //         return strtoupper($name);
            //     }),
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
        return [
            new Actions\AddAccountToWeFact
        ];
    }
}
