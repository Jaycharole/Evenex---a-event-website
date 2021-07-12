<?php   
//Action on Submit Button//  
   $form_text = 'EVENX - ';  
            
if($_GET['attendees']){  
  $id = $_GET['attendees'];
       
  $attendees = $wpdb->get_results( "SELECT * FROM wp_comments WHERE comment_post_ID = {$id}");
       
   
ob_start();
    // create new PDF document 
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);  

$pdf->SetPrintHeader(false); $pdf->SetPrintFooter(false); 

// set default monospaced font 
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED); 

//set margins 
$pdf->SetMargins(PDF_MARGIN_LEFT, 10, PDF_MARGIN_RIGHT); 

//set auto page breaks 
$pdf->SetAutoPageBreak(TRUE, 10); 

//set image scale factor 
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);  

//set some language-dependent strings 
$pdf->setLanguageArray($l);  

// --------------------------------------------------------- 

// set font 
$pdf->SetFont('dejavusans', '', 10); 

// add a page 
$pdf->AddPage('P', 'A4'); 
// create some HTML content 
    
foreach($attendees as $row){                  
                    $reg_no = $row->comment_ID;                   
                    $name = $row->comment_author;                     
                    $mobile = $row->comment_author_url;                   
                    $email = $row->comment_author_email;   
    
$str = $mobile;
$pattern = "/http:/u";

$finalmobile = preg_replace($pattern, "+91 ", $str); // Outputs "Visit W3Schools!"



   
$tbl.= <<<EOD
<style>
table, td, th {
  border: 1px solid black;
}

table {
  width: 100%;
  border-collapse: collapse;
}
</style>
<table style="height: 63px;" width="611">
<tbody>
<tr>
<td style="width: 610px;" colspan="4">Evenx Attendees</td>
</tr>
<tr>
<td style="width: 152px;">Registered No.</td>
<td style="width: 152px;">Name</td>
<td style="width: 153px;">Mobile</td>
<td style="width: 153px;">Email</td>
</tr>
<tr>
<td style="width: 152px;">$reg_no</td>
<td style="width: 152px;">$name</td>
<td style="width: 153px;">$finalmobile</td>
<td style="width: 153px;">$email</td>
</tr>
<tr>
<td style="width: 610px;" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;</td>
</tr>
</tbody>
</table> 
EOD;
} 
$comment_id = $attendees->comment_ID;

// output the HTML content 
// $pdf->writeHTML($htmlcontent, true, 0, true, 0); 
$pdf->writeHTML($tbl, true, false, false, false, '');

// $pdf->writeHTML($inlinecss, true, 0, true, 0); 

// reset pointer to the last page 
// $pdf->lastPage(); 

//Close and output PDF document 
$pdf->Output('evenx_attendees' .$comment_id. '.pdf', 'I'); 

//============================================================+ 
// END OF FILE                                                  
//============================================================+ 

ob_end_flush();
}?>
