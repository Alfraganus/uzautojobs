<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ContactUs extends Mailable
{

    use Queueable,
        SerializesModels;

    public $data;



    public function __construct($data)
    {
        $this->data = $data;
    }


    public function build()
    {
    return $this->from($this->data['email'], $this->data['full_name'])
        ->replyTo($this->data['email'], $this->data['full_name'])
        ->to(config('mail.recieve_to.address'), config('mail.recieve_to.name'))
        ->subject($this->data['subject'])
        ->view('emails.send_contact_message')
        ->with($this->data);
    }

}
