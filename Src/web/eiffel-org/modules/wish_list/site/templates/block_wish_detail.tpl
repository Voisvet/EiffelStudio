<h1 class="sub-header">WISH# {$wish.id/} {$wish.synopsis/} </h1>  
	{if isset="$edit"}
	{/if}
		<div id="primary-tabs" class="menu tabs"><ul class="horizontal">
			<li class="active"><a href="{$site_url/}resources/wish/{$wish.id/}/form">Edit</a></li></ul>
		</div>	

	<div class="row">
			<section>
				<span  class="class-form-6" itemprop="submitter">Submitter:</span>	<span class="class-form-6">{$wish.contact.name/}</span> <br>
				<span  class="class-form-6" itemprop="category">Category:</span>	<span class="class-form-6">{$wish.category.synopsis/}</span> <br>
				<span  class="class-form-6" itemprop="date">Date:</span>	<span class="class-form-6">{$wish.submission_date_output/}</span> <br>
				<span  class="class-form-6" itemprop="report_number">Number:</span>	<span class="class-form-6">{$wish.id/}</span><br>
				<span  class="class-form-6" itemprop="status">Status:</span> <span class="class-form-6">{$wish.status.synopsis/}</span> <br>
				<span  class="class-form-6" itemprop="synopsis">Synopsis:</span> <span class="class-form-6">{$wish.synopsis/}</span> <br>
			
				<strong>Description</strong>
				<textarea class="class-form-textarea" style="border: none ;background-color:white;" rows="17">{$wish.description/}</textarea>
				{foreach from="$wish.attachments" item="elem"}
								<div class="row">
									<div class="col-xs-1">
										<div class="panel panel-default">
											<div class="panel-heading">
												<span class="label label-primary-api-interactions" itemprop="attachment">Attachment:</span>
													<a href="{$site_url/}resources/wish/{$wish.id/}/download/{$elem.name/}" download="{$elem.name/}">{$elem.name/}</a>&nbsp;&nbsp;&nbsp;&nbsp;
												<span class="label label-primary-api-interactions">Size:</span>{$elem.size/}
											</div>
										</div>
									</div>
								</div>
							{/foreach}
				</section>
	</div>

<div class="row">
		<section>
		<strong>Wish Interactions</strong><br>
			{foreach from="$wish.interactions" item="item"}
				<div class="row-interaction">
				<span class="label label-primary-api-interactions" itemprop="submitter">From:</span>{$item.contact.name/}&nbsp;&nbsp;&nbsp;
				<span class="label label-primary-api-interactions" itemprop="date">Date:</span>{$item.date_output/}&nbsp;&nbsp;&nbsp;
					{if isset="$item.status"}
						<span class="label label-primary-api-interactions" itemprop="status">Status:</span> {$item.status/}&nbsp;&nbsp;&nbsp;
					{/if}
					<pre>{$item.content/}</pre>
					<br/>
					{foreach from="$item.attachments" item="elem"}
								<span class="label label-primary-api-interactions" itemprop="attachment">Attachment:</span>
								<a href="{$site_url/}resources/wish/{$wish.id/}/interaction/{$item.id/}/download/{$elem.name/}" download="{$elem.name/}">{$elem.name/}</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="label label-primary-api-interactions">Size:</span>{$elem.size/}
					{/foreach}
				</div>
			{/foreach}
		</section>
</div>

{if isset="$user"}
	<div class="btn-add-wish">
		<a href="{$site_url/}resources/wish/detail/{$wish.id/}/interaction_form" class="btn btn-primary" itemprop="create-interaction-form" rel="create-interaction-form">Add Interaction</a>
	</div>
{/if}


