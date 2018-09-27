<?php
class invoice
{
    public $invoice_id;
    public $description;
    public $quantity;
    public $unit_price;

    public function __construct($invoice_id, $description, $quantity, $unit_price)
    {
        $this->invoice_id = $invoice_id;
        $this->description = $description;
        $this->quantity = $quantity;
        $this->unit_price = $unit_price;
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
}

if (!debug_backtrace()) {
    // Debugginng output.
    $invoice = new invoice("1000000", "test", 1, 404);
    echo $invoice->display();
}