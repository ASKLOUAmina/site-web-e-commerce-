<?php// require_once('header.php'); ?>

<?php
include("inc/config.php");
include("inc/functions.php");
include("inc/CSRF_Protect.php");
$csrf = new CSRF_Protect();
$error_message='';
$success_message='';
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_registration = $row['banner_registration'];
}
?>

<?php
if (isset($_POST['form1'])) {

    $valid = 1;

    if(empty($_POST['prod_name'])) {
        $valid = 0;
        $error_message .= "le nom ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_email'])) {
        $valid = 0;
        $error_message .= "l'email ne peut pas etre vide<br>";
    } else {
        if (filter_var($_POST['prod_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= LANG_VALUE[134]."<br>";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_prod WHERE prod_email=?");
            $statement->execute(array($_POST['prod_email']));
            $total = $statement->rowCount();                            
            if($total) {
                $valid = 0;
                $error_message .= "<br>";
            }
        }
    }

    if(empty($_POST['prod_phone'])) {
        $valid = 0;
        $error_message .= "le numéro de télé ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_address'])) {
        $valid = 0;
        $error_message .= "l'adresse ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_country'])) {
        $valid = 0;
        $error_message .= "le nom du pays ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_city'])) {
        $valid = 0;
        $error_message .= "le nom de la ville ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_state'])) {
        $valid = 0;
        $error_message .= "la province ne peut pas etre vide<br>";
    }

    if(empty($_POST['prod_zip'])) {
        $valid = 0;
        $error_message .= "le code postal ne peut pas etre vide<br>";
    }

    if( empty($_POST['prod_password']) || empty($_POST['prod_re_password']) ) {
        $valid = 0;
        $error_message .= "le mot de passe ne peut pas etre vide<br>";
    }

    if( !empty($_POST['prod_password']) && !empty($_POST['prod_re_password']) ) {
        if($_POST['prod_password'] != $_POST['prod_re_password']) {
            $valid = 0;
            $error_message .= "mot de passe non identique<br>";
        }
    }

    if($valid == 1) {

        $token = md5(time());
        $prod_datetime = date('Y-m-d h:i:s');
        $prod_timestamp = time();

        // saving into the database
        $statement = $pdo->prepare("INSERT INTO tbl_prod (
                                        prod_name,
                                        prod_cname,
                                        prod_email,
                                        prod_phone,
                                        prod_country,
                                        prod_address,
                                        prod_city,
                                        prod_state,
                                        prod_zip,
                                        prod_password,
                                        prod_token,
                                        prod_datetime,
                                        prod_timestamp,
                                        prod_status,
										photo
                                    ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        $statement->execute(array(
                                        strip_tags($_POST['prod_name']),
                                        strip_tags($_POST['prod_cname']),
                                        strip_tags($_POST['prod_email']),
                                        strip_tags($_POST['prod_phone']),
                                        strip_tags($_POST['prod_country']),
                                        strip_tags($_POST['prod_address']),
                                        strip_tags($_POST['prod_city']),
                                        strip_tags($_POST['prod_state']),
                                        strip_tags($_POST['prod_zip']),
                                        md5($_POST['prod_password']),
                                        $token,
                                        $prod_datetime,
                                        $prod_timestamp,
                                        0,
										''
                                    ));

        // Send email for confirmation of the account
        $to = $_POST['prod_email'];
        
        $subject = "message de confirmation";
        $verify_link = BASE_URL.'verify.php?email='.$to.'&token='.$token;
        $message = 'Pour terminer votre inscription<br><br><a href="'.$verify_link.'">'.$verify_link.'</a>';
        $headers =  "From: " . $contact_email . "\r\n" .
					"Reply-To: " . $contact_email . "\r\n" .
					"X-Mailer: PHP/" . phpversion() . "\r\n" . 
					"MIME-Version: 1.0\r\n" . 
					"Content-Type: text/html; charset=ISO-8859-1\r\n";
        
        // Sending Email
        mail($to, $subject, $message, $headers);

        unset($_POST['prod_name']);
        unset($_POST['prod_cname']);
        unset($_POST['prod_email']);
        unset($_POST['prod_phone']);
        unset($_POST['prod_address']);
        unset($_POST['prod_city']);
        unset($_POST['prod_state']);
        unset($_POST['prod_zip']);

        $success_message = "Votre inscription est terminée. Veuillez vérifier votre adresse email pour suivre le processus de confirmation de votre inscription.";
    }
}
?>
<html>
<head></head>
<body>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/datepicker3.css">
	<link rel="stylesheet" href="css/all.css">
	<link rel="stylesheet" href="css/select2.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.css">
	<link rel="stylesheet" href="css/jquery.fancybox.css">
	<link rel="stylesheet" href="css/AdminLTE.min.css">
	<link rel="stylesheet" href="css/_all-skins.min.css">
	<link rel="stylesheet" href="css/on-off-switch.css"/>
	<link rel="stylesheet" href="css/summernote.css">
	<link rel="stylesheet" href="style.css">
<div class="page-banner" style="background-color:#010;background-image: url(../assets/uploads/<?php echo $banner_registration; ?>);">
    <div class="inner">
        <h1>Inscription Producteur</h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">

                    

                    <form action="" method="post">
                        <input type="hidden" name="_csrf" value="38b5da24ef78d5da0e95aa19b8250d1b" />   
						<div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                
                                
                                <div class="col-md-6 form-group">
                                   <label for="">Nom et prénom *</label>
                                    <input type="text" class="form-control" name="prod_name" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Nom de la compagnie</label>
                                    <input type="text" class="form-control" name="prod_cname" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Adresse e-mail  *</label>
                                    <input type="email" class="form-control" name="prod_email" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Numéro de téléphone *</label>
                                    <input type="text" class="form-control" name="prod_phone" value="">
                                </div>
                                <div class="col-md-12 form-group">
                                    <label for="">Adresse *</label>
                                    <textarea name="prod_address" class="form-control" cols="30" rows="10" style="height:70px;"></textarea>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Pays *</label>
                                    <select name="prod_country" class="form-control select2">
                                        <option value="">Choisissez le pays</option>
                                                         
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                                    foreach ($result as $row) {
                                        ?>
                                        <option value="<?php echo $row['country_id']; ?>"><?php echo $row['country_name']; ?></option>
                                        <?php
                                    }
                                    ?>    
                                    </select>                                    
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Ville *</label>
                                    <input type="text" class="form-control" name="prod_city" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Province *</label>
                                    <input type="text" class="form-control" name="prod_state" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Code postal  *</label>
                                    <input type="text" class="form-control" name="prod_zip" value="">
                                </div>
                                <div class="col-md-6 form-group">
                                  <label for="">Mot de passe *</label>
                                    <input type="password" class="form-control" name="prod_password">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for="">Retaper le mot de passe *</label>
                                   <input type="password" class="form-control" name="prod_re_password">
                                </div>
								
                                <div class="col-md-6 form-group">
                                    <label for=""></label>
                                    <input type="submit" class="btn btn-primary" value="S'inscrire" name="form1">
                                </div>
                            </div>
                        </div>                        
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>
</body>
</html>

<?php require_once('footer.php'); ?>