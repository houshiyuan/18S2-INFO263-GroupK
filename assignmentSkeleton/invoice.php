<?php
class invoice
{
    public $invoice_id;
    public $description;
    public $quantity;
    public $unit_price;
    public $customer_id;

    public function __construct($invoice_id, $description, $quantity, $unit_price, $customer_id)
    {
        $this->invoice_id = $invoice_id;
        $this->description = $description;
        $this->quantity = $quantity;
        $this->unit_price = $unit_price;
        $this->customer_id = $customer_id;
    }

    public function display()
    {
        return sprintf("Invoice ID: %-6s Description: %-6s Quantity: %-6d Cost: $%-6.2f", $this->invoice_id, $this->description, $this->quantity, $this->unit_price);
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function getInvoiceId()
    {
        return $this->invoice_id;
    }

    public function getPrice()
    {
        return $this->unit_price;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }
    public function getOwnerID()
    {
        return $this->customer_id;
    }
}

if (!debug_backtrace()) {
    // Debugginng output.
    $invoice = new invoice("1000000", "test", 1, 404,404);
    echo $invoice->display();
}