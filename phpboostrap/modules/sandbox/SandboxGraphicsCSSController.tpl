<section class="row">
	<header>
		# IF IS_ADMIN #
		<span class="pull-right">
			<a href="{PATH_TO_ROOT}/admin/menus/menus.php" title="Admin/menus">Admin/menus</a>
		</span>
		# ENDIF #
		<h1>
			{@module.title} - {@title.css}
		</h1>
	</header>
	<article class="col-md-12">
		<header>
			<span class="pull-right">
				<a href="#" class="fa fa-edit" title="{@css.edit}"></a>
				<a href="#" class="fa fa-trash" title="{@css.delete}"></a>
			</span>
			<h2>
				<span>{@css.page.title}</span>
			</h2>
			<div>{@css.more}</div>
		</header>
		<div>
			<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="pull-left" />
			<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" alt="{@css.picture}" class="pull-right" />
			<div>{@framework.lorem.large}</div>
		</div>
		<div class="modal-code">
			<a href="#page-structure" class="open-btn">{@framework.modal.open}</a>
			<div class="modal-page" id="page-structure">
				<a href="#closemodal" class="close-btn">{@framework.modal.close}</a>
				<div class="modal-content">
					<pre><code><span class="plop">plop</span></code></pre>
					<script async src="//jsfiddle.net/babsolune/230gko1v/embed/html/"></script>
				</div>
			</div>
		</div>
	</article>

	<article class="content">
		<div class="pbt-box-largest">
			<h4>{@css.options}</h4>
			<div class="pull-right">
				<div class="input-group">
					<div class="input-group-addon">
						{@css.options.sort_by}
					</div>
					<div class="input-group-sm">
						<select class="form-control">
							<option value="{@css.options.sort_by.alphabetical}">{@css.options.sort_by.alphabetical}</option>
							<option value="{@css.options.sort_by.size}">{@css.options.sort_by.size}</option>
							<option value="{@css.options.sort_by.date}">{@css.options.sort_by.date}</option>
							<option value="{@css.options.sort_by.popularity}">{@css.options.sort_by.popularity}</option>
							<option value="{@css.options.sort_by.note}">{@css.options.sort_by.note}</option>
						</select>
					</div>
					<div class="form-group-sm">
						<select class="form-control">
							<option value="{@css.modules_menus.direction.up}">{@css.modules_menus.direction.up}</option>
							<option value="{@css.modules_menus.direction.down}">{@css.modules_menus.direction.down}</option>
						</select>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			{@framework.lorem.large}
			<div class="modal-code">
				<a href="#page-options" class="open-btn">{@framework.modal.open}</a>
				<div class="modal-page" id="page-options">
					<a href="#closemodal" class="close-btn">{@framework.modal.close}</a>
					<div class="modal-content">
						<script async src="//jsfiddle.net/babsolune/seczp60L/embed/html/"></script>
					</div>
				</div>
			</div>
		</div>
	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.title.typography}</h2>
	</header>

	<article class="content">
		<div class="pbt-box-smallest">
			<h4>{@css.titles}</h4>
			<h1>h1. {@css.title} 1</h1>
			<h2>h2. {@css.title} 2</h2>
			<h3>h3. {@css.title} 3</h3>
			<h4>h4. {@css.title} 4</h4>
			<h5>h5. {@css.title} 5</h5>
			<h6>h6. {@css.title} 6</h6>
		</div>
		<div class="pbt-box-smallest">
			<h4>{@css.title.sizes}</h4>
			<span href="#" class="smaller">{@css.text.smaller}</span> <br />
			<span href="#" class="small">{@css.text.small}</span> <br />
			<span href="#" class="big">{@css.text.big}</span> <br />
			<span href="#" class="bigger">{@css.text.bigger}</span> <br />
			<span href="#" class="biggest">{@css.text.biggest}</span>
		</div>
		<div class="pbt-box-smallest">
			<h4>{@css.styles}</h4>
			<strong>{@css.text_bold}</strong><br />
			<em>{@css.text_italic}</em><br />
			<span style="text-decoration: underline;">{@css.text_underline}</span><br />
			<strike>{@css.text_strike}</strike><br />
			<a href="#" title="{@css.link}">{@css.link}</a>
		</div>
		<div class="pbt-box-smallest">
			<h4>{@css.rank_color}</h4>
			<a href="#" class="admin" title="{@css.admin}">{@css.admin}</a> <br />
			<a href="#" class="modo" title="{@css.modo}">{@css.modo}</a> <br />
			<a href="#" class="member" title="{@css.member}">{@css.member}</a> <br />
		</div>
	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.miscellaneous}</h2>
	</header>

	<article class="content">

		<div class="pbt-box-large">
			<h4>{@css.progress_bar}</h4>
			<h6>25%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;">25%</div>
			</div><br />

			<h6>50%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">50%</div>
			</div><br />

			<h6>75%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">75%</div>
			</div><br />

			<h6>100%</h6>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">100%</div>
			</div>
			<div class="modal-code">
				<a href="#progress-bar" class="open-btn">{@framework.modal.open}</a>
				<div class="modal-page" id="progress-bar">
					<a href="#closemodal" class="close-btn">{@framework.modal.close}</a>
					<div class="modal-content">
						<script async src="//jsfiddle.net/babsolune/9rn60nqp/embed/html/"></script>
					</div>
				</div>
			</div>
		</div>

		<div class="pbt-box-small">
		<h4>{@css.main_actions_icons}</h4>
			<ul>
				<li>{@css.rss_feed} : <a href="#" class="fa fa-syndication" title="{@css.rss_feed}"></a></li>
				<li>{@css.edit} : <a href="#" class="fa fa-edit" title="{@css.edit}"></a></li>
				<li>{@css.delete} : <a href="#" class="fa fa-delete" title="{@css.delete}"></a></li>
				<li>{@css.delete.confirm} : <a href="#" class="fa fa-delete" data-confirmation="delete-element" title="{@css.delete.confirm}"></a></li>
				<li>{@css.delete.confirm.custom} : <a href="#" class="fa fa-delete" data-confirmation="{@css.delete.custom_message}" title="{@css.delete.confirm.custom}"></a></li>
			</ul>
		</div>

		<div class="pbt-box-small">
			<h4>{@css.lists}</h4>
			<ul>
				<li>{@css.element} 1
					<ul>
						<li>{@css.element}</li>
						<li>{@css.element}</li>
					</ul>
				</li>
				<li>{@css.element} 2</li>
				<li>{@css.element} 3</li>
			</ul>

			<ol>
				<li>{@css.element} 1
					<ol>
						<li>{@css.element}</li>
						<li>{@css.element}</li>
					</ol>
				</li>
				<li>{@css.element} 2</li>
				<li>{@css.element} 3</li>
			</ol>
		</div>

		<div class="pbt-box-large">
			<h4>{@css.explorer}</h4>
			<div class="explorer">
				<div class="cats">
						<h2>{@css.explorer}</h2>
					<div class="content">
						<ul>
							<li><a id="class_0" href="#" title="{@css.root}"><i class="fa fa-folder"></i>{@css.root}</a>
								<ul>
									<li class="sub"><a id="class_1" href="#" title="{@css.cat} 1"><i class="fa fa-folder"></i>{@css.cat} 1</a><span id="cat_1"></span></li>
									<li class="sub"><a class="parent" href="javascript:show_cat_contents(2, 0);" title="{@css.cat} 2"><span class="fa fa-minus-square-o" id="img2_2"></span><span class="fa fa-folder-open" id ="img_2"></span></a><a class="selected" id="class_2" href="#" title="{@css.cat} 2">{@css.cat} 2</a>
									<span id="cat_2">
										<ul>
											<li class="sub"><a href="#"><i class="fa fa-folder" title="{@css.cat} 3"></i>{@css.cat} 3</a></li>
											<li class="sub"><a href="#"><i class="fa fa-folder" title="{@css.cat} 4"></i>{@css.cat} 4</a></li>
										</ul>
									</span></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="files">
						<h2>{@css.tree}</h2>
					<div class="content" id="cat_contents">
						<ul>
							<li><a href="#" title="{@css.cat} 3"><i class="fa fa-folder"></i>{@css.cat} 3</a></li>
							<li><a href="javascript:open_cat(2); show_cat_contents(0, 0);" title="{@css.cat} 4"><i class="fa fa-folder"></i>{@css.cat} 4</a></li>
							<li><a href="#" title="{@css.file} 1"><i class="fa fa-file"></i>{@css.file} 1</a></li>
							<li><a href="#" title="{@css.file} 2"><i class="fa fa-file"></i>{@css.file} 2</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="modal-code">
				<a href="#explorer" class="open-btn">{@framework.modal.open}</a>
				<div class="modal-page" id="explorer">
					<a href="#closemodal" class="close-btn">{@framework.modal.close}</a>
					<div class="modal-content">
						<script async src="//jsfiddle.net/babsolune/t7cnd5f4/2/embed/html/"></script>
					</div>
				</div>
			</div>
		</div>


		<div class="pbt-box-small center">
			<h4>{@css.button}</h4>
			<button type="submit" class="btn btn-default">{@css.button}</button>
			<br />
			<button type="submit" class="btn btn-link">{@css.button} {@css.link}</button>
		</div>
		<div class="pbt-box-small center">
			<h4>{@css.button} submit</h4>
			<button type="submit" class="btn btn-primary">{@css.button} primary</button>
			<button type="submit" class="btn btn-pbt">{@css.button} pbt</button>
		</div>
		<div class="pbt-box-small center">
			<h4>{@css.button.other}</h4>
			<button type="submit" class="btn btn-default btn-lg">{@css.button}</button>
			<button type="submit" class="btn btn-default btn-sm">{@css.button}</button>
			<button type="submit" class="btn btn-default btn-xs">{@css.button}</button>
		</div>
		<div class="pbt-box-small center">
			<div class="modal-code">
				<a href="#buttons" class="open-btn">{@framework.modal.open}</a>
				<div class="modal-page" id="buttons">
					<a href="#closemodal" class="close-btn">{@framework.modal.close}</a>
					<div class="modal-content">
						<script async src="//jsfiddle.net/babsolune/dy2ep2dk/1/embed/html/"></script>
					</div>
				</div>
			</div>
		</div>

		<div class="pbt-box-largest">
			<h4>{@css.sortable}</h4>
			<ul class="sortable-block">
				<li class="sortable-element">
					<div class="sortable-selector" title="{@css.sortable.move}"></div>
					<div class="sortable-title">
						<span><a>{@css.static.sortable}</a></span>
					</div>
				</li>
				<li class="sortable-element dragged" style="position: relative;">
					<div class="sortable-selector" title="{@css.sortable.move}"></div>
					<div class="sortable-title">
						<span><a>{@css.moved.sortable}</a></span>
					</div>
				</li>
				<li>
					<div class="dropzone">{@css.dropzone}</div>
				</li>
			</ul>
		</div>
	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.pagination}</h2>
	</header>
	<article class="content">
		<div class="pbt-box-largest center"># INCLUDE PAGINATION #</div>
	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.table}</h2>
	</header>
	<article class="content">
		<div class="pbt-box-largest">
			<div class="table-responsive">
				<table class="table">
					<caption>
						{@css.table.description}
					</caption>
					<thead>
						<tr>
							<th>
								<a href="#" class="fa fa-table-sort-up" title="{@css.table.sort.up}"></a>
								{@css.table.name}
								<a href="#" class="fa fa-table-sort-down" title="{@css.table.sort.down}"></a>
							</th>
							<th>{@css.table.description}</th>
							<th>{@css.table.author}</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th colspan="5"># INCLUDE PAGINATION #</th>
						</tr>
					</tfoot>
					<tbody>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
						<tr>
							<td>{@css.table.test}</td>
							<td>{@css.table.description}</td>
							<td>{@css.table.author}</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.messages.and.coms}</h2>
	</header>
	<article class="content">
		<div class="pbt-box-largest">
			<div id="com2" class="message" itemscope="itemscope" itemtype="http://schema.org/Comment">
				<div class="message-container">

					<div class="message-user-infos">
						<div class="message-pseudo">
								<a itemprop="author" href="{PATH_TO_ROOT}/user/?url=/profile/1" class="admin" title="{@css.messages.login}">{@css.messages.login}</a>
						</div>
						<div class="message-level">{@css.messages.level}</div>
						<img src="{PATH_TO_ROOT}/templates/{THEME}/images/no_avatar.png" class="message-avatar" alt="${LangLoader::get_message('avatar', 'user-common')}" />
					</div>

					<div class="message-date">
						<span class="actions">
							<a itemprop="url" href="#com2" title="#2">#2</a>
								<a href="#comments_message" class="fa fa-edit" title="{@css.edit}"></a>
								<a href="#comments_message" class="fa fa-delete" data-confirmation="delete-element" title="{@css.delete.confirm}"></a>
						</span>
						<span itemprop="datePublished" content="2013-09-05T15:37:01+00:00">{@css.messages.date}</span>
					</div>

					<div class="message-message">
						<div itemprop="text" class="message-content" class="content">{@css.messages.content}</div>
					</div>

				</div>
			</div>
		</div>
	</article>
	<footer></foot
</section>


<section>
	<header>
		<h2>{@css.alert.messages}</h2>
	</header>
	<article class="content">
		<div class="pbt-box-largest">
			# START messages # # INCLUDE messages.VIEW # # END messages #
		</div>

	</article>
	<footer></footer>
</section>

<section>
	<header>
		<h2>{@css.blocks}</h2>
	</header>
	<article class="content">
		<h4>{@css.blocks.large}</h4>
		<article class="block">
			<header><h3>{@css.block.title}</h3></header>
			<div class="content">
				{@framework.lorem.medium}
			</div>
			<footer></footer>
		</article>

		<h4>{@css.blocks.medium}</h4>
		<div style="overflow: hidden;">
			<article class="medium-block">
				<header>
					<h3>{@css.block.title}</h3>
				</header>
				<div class="content">
					{@framework.lorem.mini}
				</div>
				<footer></footer>
			</article>
			<article class="medium-block">
				<header>
					<h3>{@css.block.title}</h3>
				</header>
				<div class="content">
					{@framework.lorem.mini}
				</div>
				<footer></footer>
			</article>
		</div>

		<h4>{@css.blocks.small}</h4>
		<div style="overflow: hidden;">
			<article class="small-block">
				<header>
					<h3>{@css.block.title}</h3>
				</header>
				<div class="content">
					{@framework.lorem.mini}
				</div>
				<footer></footer>
			</article>
			<article class="small-block">
				<header>
					<h3>{@css.block.title}</h3>
				</header>
				<div class="content">
					{@framework.lorem.mini}
				</div>
				<footer></footer>
			</article>
			<article class="small-block">
				<header>
					<h3>{@css.block.title}</h3>
				</header>
				<div class="content">
					{@framework.lorem.mini}
				</div>
				<footer></footer>
			</article>
		</div>
	</article>
	<footer></footer>
</section>
