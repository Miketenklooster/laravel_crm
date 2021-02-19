<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Illuminate\Support\Facades\Storage;
use App\Nova\WeFactAPI;

class DownloadInvoiceFromWeFact extends Action
{
    use InteractsWithQueue, Queueable;
    public $name = 'Download Invoice';
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

        foreach($models as $model){
            $parameters = [
                "InvoiceCode" => $model->id
            ];
            
            $response = $api->sendRequest('invoice', 'download', $parameters);
            // return dd($response);
            // $invoicePDF = new PdfPrintController();
            // $pdf = base64_decode($response["invoice"]["Base64"]);
            // $path = $invoicePDF->makePDF($pdf);
            // $path       = public_path($response["invoice"]["Filename"]);
            // $contents   = base64_decode($response["invoice"]["Base64"]);

            // //store file temporarily
            // file_put_contents($path, $contents);
            // return response()->download($path)->deleteFileAfterSend(true);

            Storage::disk('local')->put($response["invoice"]["Filename"], base64_decode($response["invoice"]["Base64"]));

            if (Storage::disk('local')->exists($response["invoice"]["Filename"])) {
                // ...
                return Storage::download(Storage::path($response["invoice"]["Filename"]));
                // return Storage::download($response["invoice"]["Filename"]);
                // return Action::download(url(Storage::path($response["invoice"]["Filename"])), $response["invoice"]["Filename"]);

            }
            // $decoded = base64_decode($response["invoice"]["Base64"]);
            // $file = $response["invoice"]["Filename"];
            // file_put_contents($file, $decoded);
            
            // return dd(Storage::url($user->profile_photo));
            // return dd(Storage::url($file));
            // return dd(Storage::path( $file ));
            // if (file_exists($file)) {
            //     header('Content-Description: File Transfer');
            //     header('Content-Type: application/octet-stream');
            //     header('Content-Disposition: attachment; filename="'.basename($file).'"');
            //     header('Expires: 0');
            //     header('Cache-Control: must-revalidate');
            //     header('Pragma: public');
            //     header('Content-Length: ' . filesize($file));
            //     readfile($file);
            //     // exit;
            // }
            // return Action::download('storage/app/' . $response["invoice"]["Filename"], $response["invoice"]["Filename"]);
            // return Action::download(url(public_path($file)), $file);
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
