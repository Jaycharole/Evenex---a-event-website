<?php
get_header();
?>
<div class="header-page">
     <h2>Register your event</h2>
</div>
<br>
<br>
<div class="container">
<div class="student-form-1">
 <form action="" id="add-student-form" method="post" >
     <div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Surname">
            </div>
          </div> 
          
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">
            </div>
         </div> 
          
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Father's Name">
            </div>
        </div>       
    </div>

  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name of the applicant as it should appear on the final certificate">
           </div>
          </div> 
      </div>       

  <div class="row">
         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Address"></textarea>
           </div>
          </div> 
  </div>       

<div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="City/Town">
            </div>
          </div> 
          
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="State">
            </div>
         </div> 
          
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
              <input type="date" class="form-control" name="date_of_birth" id="date_of_birth" placeholder="Date of Birth e.g: 02-06-1996">
            </div>
        </div>       
    </div>

     <div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Mobile No">
            </div>
          </div> 
          
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Education">
            </div>
         </div> 
          
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ocupation">
            </div>
        </div>       
    </div>

     <div class="row">
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="form-group">
              
               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email ID">
            </div>
          </div> 
          
         <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="radio-div">
            
               <strong>Gender:-</strong> <input type="radio" name="gender" value="Male" checked="checked"> Male <input type="radio" name="gender" value="Female"> Female
            
            </div>
         </div> 
          
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 plr5">
            <div class="radio-div">
            
               <strong>Maratial Status:-</strong> <input type="radio" name="gender" value="Male" checked="checked"> Single <input type="radio" name="gender" value="Female"> Married
        
            </div>
        </div>       
    </div>

     <div class="row">
         <div class="col-lg-2 col-md-4 col-sm-2 col-xs-2">
             Course Name:
         </div>
         
         <div class="col-lg-4 col-md-4 col-sm-10 col-xs-10 plr5">
            <div class="form-group">
      
               <select name="course_name" id="course_name" class="form-control course-dropdown" >
                  <option value="MS-OFFICE 2013" selected="selected">MS-OFFICE 2013</option>
                  <option value="ADVANCED EXCEL 2013">ADVANCED EXCEL 2013</option>
                  <option value="BASIC TALLY ERP.9">BASIC TALLY ERP.9</option>	
                  <option value="ADVANCED TALLY ERP.9">ADVANCED TALLY ERP.9</option>	
                  <option value="GRAPHIC DESIGNING">GRAPHIC DESIGNING</option>	
                  <option value="ADVANCED GRAPHIC DESIGNING">ADVANCED GRAPHIC DESIGNING</option>	
                  <option value="ADVANCED WEB DESIGNING">ADVANCED WEB DESIGNING</option>	
                  <option value="ADVANCED WEB DEVELOPMENT">ADVANCED WEB DEVELOPMENT</option>
                  <option value="PHP">PHP</option>
                  <option value="HARDWARE &amp; NETWORKING">HARDWARE &amp; NETWORKING</option>	
                  <option value="Youtube SEO">Youtube SEO</option>
                  <option value="SEO (Website)">SEO (Website)</option>
                  <option value="ADOBE PREMIERE PRO">ADOBE PREMIERE PRO</option>
                  <option value="ADOBE AFTER EFFECTS">ADOBE AFTER EFFECTS</option>
                  <option value="COREL DRAW">COREL DRAW</option>
                  <option value="PHOTOSHOP">PHOTOSHOP</option>
                  <option value="ILLUSTRATOR">ILLUSTRATOR</option>
                  <option value="Microsoft Word">Microsoft Word</option>
                  <option value="Microsoft Excel">Microsoft Excel</option>
                  <option value="Microsoft Powerpoint">Microsoft Powerpoint</option>
               </select>
          </div>
          </div> 
          
         <div class="col-lg-2 col-md-4 col-sm-2 col-xs-2">
             Duration:
         </div>
         
         <div class="col-lg-4 col-md-4 col-sm-10 col-xs-10 plr5">
            <div class="form-group">
       
               <select name="course_duration" id="course_duration" class="form-control course-dropdown">
                  <option value="1 Month" selected="selected">1 Months</option>
                  <option value="2 Months">2 Months</option>
                  <option value="3 Months">3 Months</option>
                  <option value="4 Months">4 Months</option>
                  <option value="5 Months">5 Months</option>
                  <option value="6 Months">6 Months</option>
                  <option value="7 Months">7 Months</option>
                  <option value="8 Months">8 Months</option>
                  <option value="9 Months">9 Months</option>
                  <option value="10 Months">10 Months</option>
                  <option value="11 Months">11 Months</option>
                  <option value="1 Year">1 Year</option>
              </select>
         
            </div>
          </div>
               
    </div>

     <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
            
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Prefered batch timing">
      
           </div>
          </div> 
          
          <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 plr5">
           <div class="form-group">
    
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Adhar Card Number">

           </div>
          </div> 
      </div>       



<div class="row">
    <div class="col-md-2">
       <label class="myLabel">
         <input type="file" name="upload_student_photo">
             <span><i class="fa fa-5x fa-user" aria-hidden="true"></i><p>Upload Photo <br><span class="small light-dark">(Width 350px and Height 440px)</span></p></span>
       </label>
       <label class="myLabel">
         <input type="file" name="upload_student_sign">
             <span><p>Upload Sign<br>
             <span class="small light-dark">(Width 350px and Height 94px)</span>
             </p></span>
       </label>
    </div>

    <div class="col-md-4">
      <label class="myLabel">
         <input type="file" name="upload_student_document">
         <span><i class="fa fa-5x fa-file-image-o" aria-hidden="true"></i><p>Upload Documents (Aadhar Card / Pan Card)</p></span>
      </label>
    </div>
</div>

    <div class="col-md-3">
           <input type="submit" name="submit" class="btn btn-submit" value="Submit">
    </div>
    
</form>
</div>
    </div>
	
<br>

<?php
get_footer();
