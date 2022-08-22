<?php require_once('header.php'); ?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Voir les producteurs</h1>
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
								<th width="30">N°</th>
								<th width="180">Nom</th>
								<th width="180">Adresse Email</th>
								<th width="180">Pays, Ville, Province</th>
								<th>statut</th>
								<th width="100">Change Status</th>
								<th width="100">Action</th>
							</tr>
						</thead>
						<tbody>
							<?php
							$i=0;
							$statement = $pdo->prepare("SELECT * 
														FROM tbl_prod t1
														JOIN tbl_country t2
														ON t1.prod_country = t2.country_id
													");
							$statement->execute();
							$result = $statement->fetchAll(PDO::FETCH_ASSOC);						
							foreach ($result as $row) {
								$i++;
								?>
								<tr class="<?php if($row['prod_status']==1) {echo 'bg-g';}else {echo 'bg-r';} ?>">
									<td><?php echo $i; ?></td>
									<td><?php echo $row['prod_name']; ?></td>
									<td><?php echo $row['prod_email']; ?></td>
									<td>
										<?php echo $row['country_name']; ?><br>
										<?php echo $row['prod_city']; ?><br>
										<?php echo $row['prod_state']; ?>
									</td>
									<td><?php if($row['prod_status']==1) {echo 'Active';} else {echo 'Inactive';} ?></td>
									<td>
										<a href="producer-change-status.php?id=<?php echo $row['prod_id']; ?>" class="btn btn-success btn-xs">Change Status</a>
									</td>
									<td>
										<a href="#" class="btn btn-danger btn-xs" data-href="producer-delete.php?id=<?php echo $row['prod_id']; ?>" data-toggle="modal" data-target="#confirm-delete">Supprimer</a>
									</td>
								</tr>
								<?php
							}
							?>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Supprimer la Confirmation</h4>
            </div>
            <div class="modal-body">
                <p>Voulez-vous vraiment supprimer cet élément?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
                <a class="btn btn-danger btn-ok">Supprimer</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>