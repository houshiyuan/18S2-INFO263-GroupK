<?php
require_once("config/config.php");
require_once("invoice.php");
require_once ("owner.php");
require_once ("vehicle.php");

$conn = new mysqli($serverName, $username, $password, $dbName);
if ($conn->connect_error)
{
    fatalError($conn->connect_error);
    echo "Problem existing!";
    return;
}

function getAllInvoices($conn)
{
    $invoices = array();
    $query = "SELECT * FROM assignment.invoice";
    $result = $conn->query($query);
    if (!$result) die($conn->error);
    $rows = $result->num_rows;
    for ($j=0; $j<$rows; ++$j)
    {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        array_push($invoices, new invoice($row["invoice_id"], $row["description"],$row["quantity"],$row["unit_price"],$row["customer_id"]));

    }
    return $invoices;
}

function getAllOwners($conn)
{
    $owners = array();
    $query = "SELECT * FROM assignment.owner";
    $result = $conn->query($query);
    if (!$result) die($conn->error);
    $rows = $result->num_rows;
    for ($j=0; $j<$rows; ++$j)
    {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        array_push($owners, new owner($row["owner_fname"], $row["owner_lname"],$row["owner_phone"],$row["owner_email"],$row["owner_id"]));

    }
    return $owners;
}

function getAllVehicles($conn)
{
    $vehicles = array();
    $query = "SELECT * FROM assignment.vehicle";
    $result = $conn->query($query);
    if (!$result) die($conn->error);
    $rows = $result->num_rows;
    for ($j=0; $j<$rows; ++$j)
    {
        $row = $result->fetch_array(MYSQLI_ASSOC);
        array_push($vehicles, new vehicle($row["vehicle_id"], $row["vehicle_chassis"],$row["vehicle_model"],$row["vehicle_make"],$row["vehicle_registration"],$row["vehicle_body_type"],$row["vehicle_year"],$row["vehicle_odometer_reading"],$row["owner_id"]));

    }
    return $vehicles;
}
