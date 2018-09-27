<?php
require_once("config/config.php");
require_once("invoice.php");

$conn = new mysqli($serverName, $username, $password, $dbName);
if ($conn->connect_error)
{
    fatalError($conn->connect_error);
    echo "Problem existing!";
    return;
}

function getAllInvoice($conn)
{
    $invoices = array();
    $query = "SELECT * FROM assignment.invoice";
    $result = $conn->query($query);
    if (!$result) die($conn->error);
    $rows = $result->num_rows;
    for ($j=0; $j<$rows; ++$j)
    {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        array_push($invoices, new invoice($row["invoice_id"], $row["description"],$row["quantity"],$row["unit_price"]));

    }
    return $invoices;
}


