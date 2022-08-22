<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$_SESSION['prod']['prod_cname'] = $_POST['prod_cname'];
	$_SESSION['prod']['prod_phone'] = $_POST['prod_phone'];
	if( empty($_POST['prod_address'])) {
        $error_message .= "L'adresse ne peut pas être vide <br>";
    }else{
		$_SESSION['prod']['prod_address'] = $_POST['prod_address'];
		if( empty($_POST['prod_country'])) {
			$error_message .= "Le pays ne peut pas être vide <br>";
		}else{
			
			$_SESSION['prod']['prod_country'] = $_POST['prod_country'];
			if( empty($_POST['prod_city'])) {
				$error_message .= "La ville ne peut pas être vide <br>";
			}else{
				$_SESSION['prod']['prod_city'] = $_POST['prod_city'];
				if( empty($_POST['prod_state'])) {
					$error_message .= "La province ne peut pas être vide <br>";
				}else{
					$_SESSION['prod']['prod_state'] = $_POST['prod_state'];
					if( empty($_POST['prod_zip'])) {
						$error_message .= "Le code postal ne peut pas être vide <br>";
					}else{
						$statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_name=?");
														$statement->execute(array($_POST['prod_country']));
										                $result = $statement->fetchAll(PDO::FETCH_ASSOC);	
														foreach($result as $v){
														$s=$v['country_id'];
														}
						$_SESSION['prod']['prod_zip'] = $_POST['prod_zip'];
						// updating the database
						$statement = $pdo->prepare("UPDATE tbl_prod SET prod_cname=?, prod_phone=?, prod_address=?, prod_country=?, prod_city=?, prod_state=?, prod_zip=?   WHERE prod_id=?");
						$statement->execute(array($_POST['prod_cname'],$_POST['prod_phone'],$_POST['prod_address'],$s,$_POST['prod_city'],$_POST['prod_state'],$_POST['prod_zip'],$_SESSION['prod']['prod_id']));

						$success_message = 'Les informations d\'utilisateur ont été mises à jour avec succès .';	
					}
				}
			}
		}
	}
}


if(isset($_POST['form2'])) {

	$valid = 1;

	$path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path!='') {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'Vous devez télécharger un fichier jpg, jpeg, gif ou png<br>';
        }
    }

    if($valid == 1) {

    	// removing the existing photo
    	if($_SESSION['prod']['photo']!='') {
    		unlink('../assets/uploads/'.$_SESSION['prod']['photo']);	
    	}

    	// updating the data
    	$final_name = 'prod-'.$_SESSION['prod']['prod_id'].'.'.$ext;
        move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );
        $_SESSION['prod']['prod_photo'] = $final_name;

        // updating the database
		$statement = $pdo->prepare("UPDATE tbl_prod SET photo=? WHERE prod_id=?");
		$statement->execute(array($final_name,$_SESSION['prod']['prod_id']));

        $success_message = 'La photo de l utilisateur a été mise à jour avec succès .';
    	
    }
}

if(isset($_POST['form3'])) {
	$valid = 1;

	if( empty($_POST['prod_password']) || empty($_POST['prod_re_password']) ) {
        $valid = 0;
        $error_message .= "Le mot de passe ne peut pas être vide <br>";
    }

    if( !empty($_POST['prod_password']) && !empty($_POST['prod_re_password']) ) {
    	if($_POST['prod_password'] != $_POST['prod_re_password']) {
	    	$valid = 0;
	        $error_message .= "Les mots de passe ne correspondent pas <br>";	
    	}        
    }

    if($valid == 1) {

    	$_SESSION['prod']['prod_password'] = md5($_POST['prod_password']);

    	// updating the database
		$statement = $pdo->prepare("UPDATE tbl_prod SET prod_password=? WHERE prod_id=?");
		$statement->execute(array(md5($_POST['prod_password']),$_SESSION['prod']['prod_id']));

    	$success_message = 'Le mot de passe de l utilisateur a été mis à jour avec succès .';
    }
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Modifier le Profil</h1>
	</div>
</section>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_prod WHERE prod_id=?");
$statement->execute(array($_SESSION['prod']['prod_id']));
$statement->rowCount();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$prod_name = $row['prod_name'];
	$prod_cname = $row['prod_cname'];
	$prod_email = $row['prod_email'];
	$prod_phone = $row['prod_phone'];
	$prod_country = $row['prod_country'];
	$prod_address = $row['prod_address'];
	$prod_city = $row['prod_city'];
	$prod_state = $row['prod_state'];
	$prod_zip = $row['prod_zip'];
	$prod_password = $row['prod_password'];
	$prod_token = $row['prod_token'];
	$prod_datetime = $row['prod_datetime'];
	$prod_timestamp = $row['prod_timestamp'];
	$prod_status= $row['prod_status'];
	$photo = $row['photo'];
}
?>


<section class="content">

	<div class="row">
		<div class="col-md-12">
				
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">Mettre à jour les informations</a></li>
						<li><a href="#tab_2" data-toggle="tab">Mettre à jour la photo</a></li>
						<li><a href="#tab_3" data-toggle="tab">Mettre à jour le mot de passe</a></li>
					</ul>
					<div class="tab-content">
          				<div class="tab-pane active" id="tab_1">
							
							<form class="form-horizontal" action="" method="post">
							<div class="box box-info">
								<div class="box-body">
								 <?php
                                if($error_message != '') {
                                    echo "<div class='error' style='padding: 10px;background:red;margin-bottom:20px;'>".$error_message."</div>";
                                }?>
									
								<div class="form-group">
										<label for="" class="col-sm-2 control-label">Nom <span>*</span></label>
												<div class="col-sm-4" style="padding-top:7px;">
													<?php echo $prod_name; ?>
												</div>
											
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Nom de la compagnie</label>
										
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_cname" value="<?php echo $prod_cname; ?>">
												</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Adresse e-mail <span>*</span></label>
											<div class="col-sm-4" style="padding-top:7px;">
												<?php echo $prod_email; ?>
											</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Télé </label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prod_phone" value="<?php echo $prod_phone; ?>">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Adresse <span>*</span></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_address" value="<?php echo $prod_address; ?>">
												</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Pays <span>*</span></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_country" value="<?php $statement = $pdo->prepare("SELECT * FROM tbl_country WHERE country_id=?");
																															 $statement->execute(array($prod_country));
																															 $result = $statement->fetchAll(PDO::FETCH_ASSOC);	
																															foreach($result as $v){
																																 echo $v['country_name'];
																															}?>">
												</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Ville <span>*</span></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_city" value="<?php echo $prod_city; ?>">
												</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Province <span>*</span></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_state" value="<?php echo $prod_state; ?>">
												</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Code postal <span>*</span></label>
												<div class="col-sm-4">
													<input type="text" class="form-control" name="prod_zip" value="<?php echo $prod_zip; ?>">
												</div>
									</div>
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Photo existante</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <img src="../assets/uploads/<?php echo $photo; ?>" class="existing-photo" width="140">
							            </div>
							        </div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form1">Mettre à jour les informations</button>
										</div>
									</div>
								</div>
							</div>
							</form>
          				</div>
          				<div class="tab-pane" id="tab_2">
							<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
							            <label for="" class="col-sm-2 control-label">Nouvelle photo</label>
							            <div class="col-sm-6" style="padding-top:6px;">
							                <input type="file" name="photo">
							            </div>
							        </div>
							        <div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form2">Mettre à jour la photo</button>
										</div>
									</div>
								</div>
							</div>
							</form>
          				</div>
          				<div class="tab-pane" id="tab_3">
							<form class="form-horizontal" action="" method="post">
							<div class="box box-info">
								<div class="box-body">
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Mot de passe </label>
										<div class="col-sm-4">
											<input type="password" class="form-control" name="prod_password">
										</div>
									</div>
									<div class="form-group">
										<label for="" class="col-sm-2 control-label">Retaper le mot de passe </label>
										<div class="col-sm-4">
											<input type="password" class="form-control" name="prod_re_password">
										</div>
									</div>
							        <div class="form-group">
										<label for="" class="col-sm-2 control-label"></label>
										<div class="col-sm-6">
											<button type="submit" class="btn btn-success pull-left" name="form3">Mettre à jour le mot de passe</button>
										</div>
									</div>
								</div>
							</div>
							</form>

          				</div>
          			</div>
				</div>			

		</div>
	</div>
</section>

<?php require_once('footer.php'); ?>