<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-bank" data-toggle="tooltip"
					title="<?php echo $button_save; ?>" class="btn btn-primary">
					<i class="fa fa-save"></i>
				</button>
				<a href="<?php echo $cancel; ?>" data-toggle="tooltip"
					title="<?php echo $button_cancel; ?>" class="btn btn-default"><i
					class="fa fa-reply"></i></a>
			</div>
			<h1><?php echo $heading_title; ?></h1>
			<ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
		</div>
	</div>
	<div class="container-fluid">
    	<?php if ($error_warning) { ?>
	    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
	      <button type="button" class="close" data-dismiss="alert">&times;</button>
	    </div>
	    <?php } ?>
	    <?php if ($success) { ?>
	    <div class="alert alert-success"><i class="fa fa-check-circle"></i>
	    <?php echo $success; ?>
	      <button type="button" class="close" data-dismiss="alert">&times;</button>
	    </div>
	    <?php } ?>
    		<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
			</div>
			<div class="panel-body">
				<form action="<?php echo $action; ?>" method="post"
					enctype="multipart/form-data" id="form-bank"
					class="form-horizontal">
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-bank-name"><?php echo $entry_bank_name; ?></label>
						<div class="col-sm-10">
							<input type="text" name="bank_name" value="<?php echo $bank_name; ?>"
								placeholder="<?php echo $entry_bank_name; ?>" id="input-bank-name" class="form-control" />
						<?php if ($error_bank_name) { ?>
							<div class="text-danger"><?php echo $error_bank_name; ?></div>
						<?php } ?>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-bank-branch-name"><?php echo $entry_bank_branch_name; ?></label>
						<div class="col-sm-10">
							<input type="text" name="bank_branch_name" value="<?php echo $bank_branch_name; ?>"
								placeholder="<?php echo $entry_bank_branch_name; ?>" id="input-bank-branch-name" class="form-control" />
						<?php if ($error_bank_branch_name) { ?>
							<div class="text-danger"><?php echo $error_bank_branch_name; ?></div>
						<?php } ?>
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-bank-account-num"><?php echo $entry_bank_account_num; ?></label>
						<div class="col-sm-10">
							<input type="text" name="bank_account_num" value="<?php echo $bank_account_num; ?>"
								placeholder="<?php echo $entry_bank_account_num; ?>" id="input-bank-account-num" class="form-control" />
						<?php if ($error_bank_account_num) { ?>
							<div class="text-danger"><?php echo $error_bank_account_num; ?></div>
						<?php } ?>
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-account-name"><?php echo $entry_account_name; ?></label>
						<div class="col-sm-10">
							<input type="text" name="account_name" value="<?php echo $account_name; ?>"
								placeholder="<?php echo $entry_account_name; ?>" id="input-account-name" class="form-control" />
						<?php if ($error_account_name) { ?>
							<div class="text-danger"><?php echo $error_account_name; ?></div>
						<?php } ?>
						</div>
					</div>
					<input type="hidden" name="bank_account_id" value="<?php echo $bank_account_id; ?>" />
				</form>
			</div>
		</div>
	</div>
</div>
<?php echo $footer; ?>