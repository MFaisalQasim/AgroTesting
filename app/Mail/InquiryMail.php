<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
// use App\Mail\InquiryMail;

class InquiryMail extends Mailable implements ShouldQueue
{
    use Queueable, SerializesModels;
    // public $data;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    // }
    // public function __construct($data)
    // {
    //     $this->data = $data;
    //     dd($data);
    // }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
    //  return  $data;   
        return $this->from('contact@example.com', 'Example')
        ->to('devop361@gmail.com')  
                    ->subject('Responce Inquiry Confirmation')
                    ->view('Emails.InquiryMail')
                    //  -> view("frontend.thanks.index");
                    ->with('data',$this->data);
    }
}
