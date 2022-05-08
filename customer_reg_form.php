<?php ob_start(); ?>

<html>
<head>
    <title>Registration Form</title>
    <link rel="stylesheet" type="text/css" href="css/customer_reg_form.css"/>
    
	<?php include'header.php';   ?>
	
    </head>
    <body>
    <div class="container_regfrm_container_parent">
	<h3>Online Account Opening Form</h3>
	<div class="container_regfrm_container_parent_child">
		<form method="post">
				 <input type="text" name="name" placeholder="Name" required />
				 <select name ="gender" required >
					  <option class="default" value="" disabled selected>Gender</option>
					  <option value="Male" required >Male</option>
					  <option value="Female">Female</option>
					  <option value="Others">Others</option>
				</select>
				 <input type="text" name="mobile" placeholder="Mobile no" required />
				 <input type="text" name="email" placeholder="Email id" />
				 <input type="text" name="landline" placeholder="Landline no" />
				 <input type="text" name="dob" placeholder="Date of Birth" onfocus="(this.type='date')" required />
				 <input type="text" name="pan_no" placeholder="PAN Number" minlength="10" maxlength="10" required />
				 <input type="text" name="citizenship" placeholder="Citizenship Number" required />
				 <input class="address" id="autocomplete" type="text" name="autocomplete" placeholder="Home Address" required  />
				 <input class="address" type="text" name="officeaddrs" placeholder="Office Address" />
				 <input type="text" name="country" placeholder="India" value="India" readonly="readonly" />
				 <input type="text" name="state" placeholder="State" required />
				 <input type="text" name="city" placeholder="City" required />
				 <input type="text" name="pin" placeholder="Pin Code" required />
				 <input type="text" name="arealoc" placeholder="Area/Locality" required />
				 <input type="text" name="nominee_name" placeholder="Nominee Name (If any)" />
				 <input type="text" name="nominee_ac_no" placeholder="Nominee Account no"  />
				 
				 <select name ="acctype" required >
					  <option class="default" value="" disabled selected>Account Type</option>
					  <option value="Saving">Saving</option>
					  <option value="Current">Current</option>
				</select>
				
				<input type="submit" name="submit" value="Submit">
				</form>
         </div>
		 </div>
		 
<?php include'footer.php';?>
    
</body>
</html>


<?php 
function validate_mobile($mobile)
{
	return preg_match('/^[0-9]{10}+$/', $mobile);
}

function validate_email($email)
{
	return preg_match('/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/', $email);
}

function validate_telephone($landline){
	return preg_match('/^[0-9]{8}+$/', $landline);
}

if(isset($_POST['submit'])){
	session_start();
	if (validate_email($_POST['email'])){
		if (validate_mobile($_POST['mobile'])){
			if (validate_telephone($_POST['landline'])){
				$_SESSION['$cust_acopening'] = TRUE;
				$_SESSION['cust_name']=$_POST['name'];
				$_SESSION['cust_gender']=$_POST['gender'];
				$_SESSION['cust_mobile']=$_POST['mobile'];
				$_SESSION['cust_email']=$_POST['email'];
				$_SESSION['cust_landline']=$_POST['landline'];
				$_SESSION['cust_dob']=$_POST['dob'];
				$_SESSION['cust_pan=']=$_POST['pan_no'];
				$_SESSION['cust_citizenship']=$_POST['citizenship'];
				$_SESSION['cust_homeaddrs']=$_POST['homeaddrs'];
				$_SESSION['cust_officeaddrs']=$_POST['officeaddrs'];
				$_SESSION['cust_country']=$_POST['country'];
				$_SESSION['cust_state']=$_POST['state'];
				$_SESSION['cust_city']=$_POST['city'];
				$_SESSION['cust_pin']=$_POST['pin'];
				$_SESSION['arealoc']=$_POST['arealoc'];
				$_SESSION['nominee_name']=$_POST['nominee_name'];
				$_SESSION['nominee_ac_no']=$_POST['nominee_ac_no'];
				$_SESSION['cust_acctype']=$_POST['acctype'];
				
				header('location:cust_regfrm_confirm.php');
			}
			else{
				echo '<script>alert(" You entered an Invalid Telephone Number !! ")</script>';
			}
		}
		else{
			echo '<script>alert(" You entered an Invalid Mobile Number !! ")</script>';
		}
	}
	else{
		echo '<script>alert(" You entered an Invalid Email Id !!!! ")</script>';
	}	
}

?>