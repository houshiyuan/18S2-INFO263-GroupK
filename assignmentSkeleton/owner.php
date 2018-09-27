<?php
class owner
{
    public $owner_fname;
    public $owner_lname;
    public $owner_phone;
    public $owner_email;
    public $owner_id;

    public function __construct($owner_fname, $owner_lname, $owner_phone, $owner_email, $owner_id)
    {
        $this->owner_fname = $owner_fname;
        $this->owner_lname = $owner_lname;
        $this->owner_phone = $owner_phone;
        $this->owner_email = $owner_email;
        $this->owner_id = $owner_id;
    }

    public function display()
    {
        return sprintf("Owner ID: %-6s First Name: %-6s Last Name: %-6s Phone: %-6d E-mail: $%-6s", $this->owner_id, $this->owner_fname, $this->owner_lname, $this->owner_phone, $this->owner_email);
    }

    public function getOwnerID()
    {
        return $this->owner_id;
    }

    public function getFirstName()
    {
        return $this->owner_fname;
    }

    public function getLastName()
    {
        return $this->owner_lname;
    }

    public function getPhone()
    {
        return $this->owner_phone;
    }

    public function getEmail()
    {
        return $this->owner_email;
    }
}

if (!debug_backtrace()) {
    // Debugginng output.
    $invoice = new owner("Firstname", "Lastname", 404404404, "404404@404.com", 404);
    echo $invoice->display();
}