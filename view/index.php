<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <title><?php echo $site['title'];?></title>
    <meta name="keywords" content="<?php echo $site['keywords'];?>">
    <meta name="description" content="<?php echo $site['description'];?>">
	<!--[if lt IE 9]><script>window.location.href='http://www.ifeiwu.com/ie-browser-upgrade.html';</script><![endif]-->
	<link rel="apple-touch-icon" href="<?php echo $this->url('data/apple-touch-icon.png');?>">
    <link rel="icon" type="image/png" href="<?php echo $this->url('data/favicon.png');?>">
    	
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/reset.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/animate.css');?>">
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/main.css');?>">
    <?php if($site['skin']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/skin/'.$site['skin'].'.css');?>">
    <?php endif;?>
    <?php if($site['style']):?>
    <link rel="stylesheet" href="<?php echo $this->url('asset/css/'.$site['style'].'.css');?>">
	<?php endif;?>

	<script src="<?php echo $this->url('asset/js/jquery.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/wow.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/smoothscroll.js');?>"></script>
	<script src="<?php echo $this->url('asset/js/main.js');?>"></script>
</head>
<body>

	<a href="javascript:;" class="todown"></a>
	
	<a href="javascript:;" class="totop"></a>
	
	<div class="wrap">
	    <?php
		foreach ($items as $key => $value):
	        $image_path = $value['image_path'];
	        $image_bg = $value['image_bg'];
			$image_effect = $value['image_effect'];
			$image_align = $value['image_align'];
			$image_padding = $value['image_padding'];
	        $image = $value['image'];
	        $title = $value['title'];
			$url = $value['url'];
			$url_target = $value['url_target'];
			$utime = $value['utime'];
			$style = '';
			
			if ($image_align) {
				$style = 'text-align:'.$image_align.';';
			}
			
			if ($image_align != 'center') {
				$style .= 'padding-'.$image_align.':'.$image_padding.'%;';
			}
	    ?>
	    <section style="background-image:url(<?php echo $this->url($image_path.'/'.$image_bg, $utime);?>);">
	        <?php if ($image):?>
	        <div class="wow <?php echo $image_effect;?>" style="<?php echo $style;?>">
	        	<a <?php echo $url?'href="'.$url.'"':'';?> <?php echo $url_target?'target="'.$url_target.'"':'';?>>
	        		<img alt="<?php echo $title;?>" src="<?php echo $this->url($image_path.'/'.$image, $utime);?>">
	        	</a>
	        </div>
	        <?php endif;?>
	    </section>
	    <?php endforeach;?>
	</div>
	
	<?php
	if ($site['stats_open'] == 1)
	{
		$squery = http_build_query(array(
				'r'=>$this->request->root(),
				'm'=>$site['stats_much'],
				'u'=>$site['stats_unit'],
				'd'=>$site['stats_date']
			)
		);
		
		echo '<script src="' . $this->url('asset/js/stats.js?' . $squery) . '"></script>';
	}
	
	if ($site['stats3_open'] == 1) { echo $this->decode($site['stats3_code']); }
	?>
	
</body>
</html>
