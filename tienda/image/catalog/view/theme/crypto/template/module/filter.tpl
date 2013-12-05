<div class="box">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content flit" style="background:#F2F2F2;">
    <ul class="box-filter">
      <?php foreach ($filter_groups as $filter_group) { ?>
      <li style="width:240px; padding:10px 0px 0 0; "><span id="filter-group<?php echo $filter_group['filter_group_id']; ?>" style="padding:0px 10px; margin-bottom:10px;"><i class="icon-hand-right che" style="color:#E44D2E"></i><?php echo $filter_group['name']; ?></span>
             <ul style="background:#f2f2f2; margin-top:6px;">
          <?php foreach ($filter_group['filter'] as $filter) { ?>
          <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
          <li>
            <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" checked="checked" />
            <label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
          </li>
          <?php } else { ?>
          <li>
            <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" />
            <label for="filter<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
          </li>
          <?php } ?>
          <?php } ?>
        </ul>
      </li>
      <?php } ?>
    </ul>
      <div class="buttons">
<div class="right">
    <a id="button-filter" class="button" style="margin-right:10px; background:#666;"><i class="icon-search che"></i><?php echo $button_filter; ?></a>
    </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 

