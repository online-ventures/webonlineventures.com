$('input[watermark], textarea[watermark]').each(function(){
	var $this = $(this)
	
	$this.
		click(function(e){
			e.preventDefault();
			$this.focus();
		}).
		focus(function(){
			if($this.val() === $this.attr('watermark')) {
				$this[0].setSelectionRange(0,0);
				$this.keydown(function(){
					$this.val('');
					$this.removeClass('watermark');
					$this.unbind('keydown');
				});
			}
		}).
		blur(function(){
			if($this.val() === '') {
				$this.val($this.attr('watermark'));
				$this.addClass('watermark');
			}
		}).
		
		blur();
});