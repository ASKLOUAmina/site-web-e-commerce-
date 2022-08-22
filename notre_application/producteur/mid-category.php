<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Afficher les Catégories</h1>
	</div>
	<div class="content-header-right">
		<a href="mid-category-add.php" class="btn btn-primary btn-sm">Ajouter nouveau</a>
	</div>
</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-striped">
			<thead>
			    <tr>
			        <th>N°</th>
			        <th>Nom de la Catégorie</th>
                    <th>Nom de la Super Catégorie</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i=0;
            	$statement = $pdo->prepare("SELECT * 
                                    FROM tbl_mid_category t1
                                    JOIN tbl_top_category t2
                                    ON t1.tcat_id = t2.tcat_id
                                    ORDER BY t1.mcat_id DESC");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
            	foreach ($result as $row) {
            		$i++;
            		?>
					<tr>
	                    <td><?php echo $i; ?></td>
	                    <td><?php echo $row['mcat_name']; ?></td>
                        <td><?php echo $row['tcat_name']; ?></td>
	                </tr>
            		<?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div>
  

</section>

<?php require_once('footer.php'); ?>