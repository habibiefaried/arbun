<?php $this->load->view('user/header.php', array('title'=>'Selipanku')); ?>
<div class="container">
	<div class="row">
		<?php $this->load->view('user/sidebar.php'); ?>
		<div class="span9 strip box">
			<h3>Selipan Saya</h3>
			<legend></legend>	
			<div style="margin:20px">
				<?php if($model->result_count() > 0) : ?>
					<table class="table table-striped">
					  <thead>
						<tr>
							  <th>#</th>
							  <th>Judul Arsip</th>
						</tr>
					  </thead>
					  <tbody>
						<?php $ctr = $model->paged->current_row + 1; $data = 1?>
						<?php foreach($model as $selip) :?>
						<tr>
							<td><?php echo $ctr ?></td>
							<td><?php echo anchor('arsip/view/'.$selip->buku_id, $selip->buku_judul) ?></td>
							<td> 
									<?php echo anchor('bookmarks/delete/'.$selip->id.'/'.$selip->buku_id,'<i class="icon-trash icon-white"></i>', 'onclick="if(!confirm(\'Yakin mau dihapus?\'))return false;" class="btn btn-small btn-danger" '); ?>
							  </td>
							 </tr>
						<?php $ctr++; ?>
						<?php endforeach; ?>
					  </tbody>
					</table>
				<?php else: echo "Tidak ada selipan"; endif; ?>
			</div>
			<?php echo $pagination ?>
		</div>
	</div>
</div>