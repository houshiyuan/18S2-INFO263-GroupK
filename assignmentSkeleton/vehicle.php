<?php
class vehicle
{
    public $vehicle_id;
    public $vehicle_chassis;
    public $vehicle_model;
    public $vehicle_make;
    public $vehicle_registration;
    public $vehicle_body_type;
    public $vehicle_year;
    public $vehicle_odometer_reading;
    public $owner_id;

    public function __construct($vehicle_id,$vehicle_chassis,$vehicle_model,$vehicle_make,$vehicle_registration,$vehicle_body_type,$vehicle_year,$vehicle_odometer_reading,$owner_id)
    {
        $this->vehicle_id = $vehicle_id;
        $this->vehicle_chassis = $vehicle_chassis;
        $this->vehicle_model = $vehicle_model;
        $this->vehicle_make = $vehicle_make;
        $this->vehicle_registration = $vehicle_registration;
        $this->vehicle_body_type = $vehicle_body_type;
        $this->vehicle_year = $vehicle_year;
        $this->vehicle_odometer_reading = $vehicle_odometer_reading;
        $this->owner_id = $owner_id;
    }

    public function display()
    {
        return sprintf("Owner ID: %-6s Vehicle ID: %-6s Chassis: %-6s Model: %-6s Make: %-6s Registration Num: %-6s Type: %-6s Year: %-6s Odometer: %-6d", $this->owner_id, $this->vehicle_id, $this->vehicle_chassis, $this->vehicle_model, $this->vehicle_make, $this->vehicle_registration, $this->vehicle_body_type, $this->vehicle_year, $this->vehicle_odometer_reading);
    }

    public function getVehicleID()
    {
        return $this->vehicle_id;
    }

    public function getVehicleChassis()
    {
        return $this->vehicle_chassis;
    }

    public function getVehicleModel()
    {
        return $this->vehicle_model;
    }

    public function getVehicleMake()
    {
        return $this->vehicle_make;
    }

    public function getVehicleRegistration()
    {
        return $this->vehicle_registration;
    }

    public function getVehicleBodyType()
    {
        return $this->vehicle_body_type;
    }

    public function getVehicleYear()
    {
        return $this->vehicle_year;
    }

    public function getVehicleOdometer()
    {
        return $this->vehicle_odometer_reading;
    }

    public function getOwnerID()
    {
        return $this->owner_id;
    }
}

if (!debug_backtrace()) {
    // Debugginng output.
    $vehicle = new vehicle(404,404,404,404,404,404,404,404,404);
    echo $vehicle->display();
}