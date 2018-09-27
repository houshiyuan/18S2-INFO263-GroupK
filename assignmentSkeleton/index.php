<!-- This is your main page -->
<?
require_once ("database.php");
?>
<!DOCTYPE html>
<html lang="en">
 <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <meta name="description" content="">
     <meta name="author" content="">

     <title>Tyre Town</title>

     <!-- Bootstrap core CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link rel="stylesheet" href="css/style.css">

 </head>
 <body>
   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
       <div class="container">
           <a class="navbar-brand" href="#">Tyre Town</a>
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
           </button>
       </div>
   </nav>
   <!-- Page content -->
   <div class="container">
     <h1 class="mt-5 text-center">INFO263 Assignment 2018!</h1>
   </div>
   <?php
   $invoiceList = getAllInvoice($conn);
   printElement($invoiceList);

   function printElement($list){
       //Function for print each element in invoice list.
       for ($i=0; $i < count($list); $i++){
           echo 'ID: '.$list[$i]->invoice_id.'<br>Description: '.$list[$i]->description.'<br>Quantity: '.$list[$i]->quantity. '<br>Unit Price($): '.$list[$i]->unit_price. '<br><br>';

       }
   }
   ?>


   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                    crossorigin="anonymous">
   </script>
   <script
                    src="https://code.jquery.com/jquery-3.3.1.min.js"
                    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
                    crossorigin="anonymous">
   </script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                    crossorigin="anonymous">
   </script>
   <script src="script/scripts.js"></script>
   <script>
       pricePlusGST(70);
   </script>
 </body>
