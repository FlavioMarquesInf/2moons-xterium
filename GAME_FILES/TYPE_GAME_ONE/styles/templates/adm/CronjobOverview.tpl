{include file="overall_header.tpl"}
{include file="overall_menu.tpl"}
<!-- Main content -->
			<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Server Settings</span> - CronJob Settings</h4>
						</div>

						<div class="heading-elements">
							<div class="heading-btn-group">
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-bars-alt text-primary"></i><span>Statistics</span></a>
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calculator text-primary"></i> <span>Invoices</span></a>
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calendar5 text-primary"></i> <span>Schedule</span></a>
							</div>
						</div>
					</div>

					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="admin.php"><i class="icon-home2 position-left"></i> Home</a></li>
							<li><a href="admin.php?page=cronjob">Server Settings</a></li>
							<li class="active">CronJob Settings</li>
						</ul>

						<ul class="breadcrumb-elements">
							<li><a href="#"><i class="icon-comment-discussion position-left"></i> Support</a></li>
							
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">



							<!-- Advanced legend -->
								<div class="panel panel-flat">


									<div class="panel-body">
										
										<fieldset>
											<legend class="text-semibold">
												<i class="icon-file-text2 position-left"></i>
												CronJob Settings
												<a class="control-arrow" data-toggle="collapse" data-target="#Frame8">
													<i class="icon-circle-down2"></i>
												</a>
											</legend>
 
											<div class="collapse in" id="Frame8">
												<table class="table table-bordered table-hover datatable-highlight">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Hour</th>
									<th>Minute</th>
									<th>Day</th>
									<th>Class</th>
									<th>Next Cron</th>
									<th>Active</th>
									<th>Locked</th>
									<th class="text-center">Actions</th>
								</tr>
							</thead>
							<tbody>
								{foreach item=CronjobInfo from=$CronjobArray}
								<tr>
									<td>{$CronjobInfo.id}</td>
									<td>{if isset($LNG.cronName[$CronjobInfo.name])}{$LNG.cronName[$CronjobInfo.name]}{else}{$CronjobInfo.name}{/if}</td>
									<td>{$CronjobInfo.hours}</td>
									<td>{$CronjobInfo.min}</td>
									<td>{$CronjobInfo.dom}</td>
									<td>{$CronjobInfo.class}</td>
									<td>{if $CronjobInfo.isActive}{date($LNG.php_tdformat, $CronjobInfo.nextTime)}{else}-{/if}</td>
									<td>{if $CronjobInfo.isActive}<a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;active=0"><span class="label label-success">Active</span></a>{else}<a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;active=1"><span class="label label-danger">Not active</span></a>{/if}</td>
									<td>{if $CronjobInfo.lock}<a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;lock=0"><span class="label label-danger">Locked</span></a>{else}<a href="admin.php?page=cronjob&amp;id={$CronjobInfo.id}&amp;lock=1"><span class="label label-success">Active</span></a>{/if}</td>
									<td class="text-center">
										<ul class="icons-list">
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown">
													<i class="icon-menu9"></i>
												</a>

												<ul class="dropdown-menu dropdown-menu-right">
													<li><a href="admin.php?page=cronjob&detail={$CronjobInfo.id}"><i class="icon-pencil5"></i> Edit Cron</a></li>
													<li><a href="admin.php?page=cronjob&delete={$CronjobInfo.id}"><i class="glyphicon glyphicon-remove"></i> Delete Cron</a></li>
												</ul>
											</li>
										</ul>
									</td>
								</tr>
								{/foreach}
							
							</tbody>
						</table>
											</div>
										</fieldset>
										
									</div>
								</div>
							<!-- /a legend -->
						
{include file="overall_footer.tpl"}