<?php
  $this->Js->get('#CityCountryId')->event('change', 
    $this->Js->request(array(
        'controller'=>'states',
        'action'=>'getByState'
        ), array(
        'update'=>'#CityStateId',
        'async' => true,
        'method' => 'post',
        'dataExpression'=>true,
        'data'=> $this->Js->serializeForm(array(
            'isForm' => true,
            'inline' => true
            ))
        ))
    );

?>


<div class="cities form">

	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1><?php echo __('Add City'); ?></h1>
			</div>
		</div>
	</div>



	<div class="row">
		<div class="col-md-3">
			<div class="actions">
				<div class="panel panel-default">
					<div class="panel-heading">Actions</div>
						<div class="panel-body">
							<ul class="nav nav-pills nav-stacked">

																<li><?php echo $this->Html->link(__('<span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;List Cities'), array('action' => 'index'), array('escape' => false)); ?></li>
														</ul>
						</div>
					</div>
				</div>			
		</div><!-- end col md 3 -->
		<div class="col-md-9">
			<?php echo $this->Form->create('City', array('role' => 'form')); ?>

				<div class="form-group">
					<?php echo $this->Form->input('country_id', array('label'=>__('Countries List'), 'empty'=>__('Select Countries'), 'options'=>$countries, 'selected'=>false, 'class' => 'form-control', 'placeholder' => 'Country Id'));?>
				</div>
				<div class="form-group">
					<?php echo $this->Form->input('state_id', array('label'=>__('States List'),
                                                            'empty'=>__('Select States'),
                                 'options'=>$states, 'selected'=>false,'class' => 'form-control', 'placeholder' => 'State Id'));?>
				</div>
				<div class="form-group">
					<?php echo $this->Form->input('city', array('class' => 'form-control', 'placeholder' => 'City'));?>
				</div>
				<div class="form-group">
					<?php echo $this->Form->submit(__('Submit'), array('class' => 'btn btn-default')); ?>
				</div>

			<?php echo $this->Form->end() ?>

		</div><!-- end col md 12 -->
	</div><!-- end row -->
</div>
