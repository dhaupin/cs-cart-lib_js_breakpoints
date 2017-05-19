{if $addons.lib_js_breakpoints.lib_js_brk_enable}
<script type ="text/javascript" {if $addons.lib_js_breakpoints.lib_js_brk_defer = 'N'}data-no-defer{/if}>

var ui_wait = {$addons.lib_js_breakpoints.lib_js_brk_wait};

{literal}
$(window).resize(_.debounce(function(){
	ui_update();
}, ui_wait)).trigger('resize');

function ui_update() {
	var ui_sc_w = screen.width,
		ui_sc_h = screen.height,
		ui_sc_gcd = ui_ratio(ui_sc_w, ui_sc_h),
		ui_sc_r = ui_sc_w/ui_sc_gcd + ':' + ui_sc_h/ui_sc_gcd,
		ui_w = window.innerWidth,   // may not work on safari 8
		ui_h = window.innerHeight,  // may not work on safari 8
		ui_m = window.getComputedStyle(document.body, ':after').content.replace(/"|'/g, ''),
		ui_mobile = ['tiny', 'small'].indexOf(ui_m),
		ui_tablet = ['medium', 'large'].indexOf(ui_m),
		ui_desktop = ['extra-large', 'widescreen'].indexOf(ui_m);
    
	//console.log('computed breakpoint: ' + ui_m + '    mobile index = ' + ui_mobile + '    tablet index = ' + ui_tablet + '    desktop index = ' + ui_desktop);

	$('html').addClass('ui-html').attr({'ui-w': ui_w, 'ui-h': ui_h, 'ui-sc-w': ui_sc_w, 'ui-sc-h': ui_sc_h, 'ui-sc-r': ui_sc_r, 'ui-wait': ui_wait, 'ui-mode': ui_m});

	if (ui_mobile > -1) {
		$('html').attr('ui-dev', 'mobile');
		if ($.isFunction($.qtip)) {
			$('[data-hasqtip]').qtip('hide').qtip('disable');
		}
		
	} else if (ui_tablet > -1) {
		$('html').attr('ui-dev', 'tablet');
		if ($.isFunction($.qtip)) {
			$('[data-hasqtip]').qtip('hide').qtip('disable');
		}
		
	} else if (ui_desktop > -1) {
		$('html').attr('ui-dev', 'desktop');
		if ($.isFunction($.qtip)) {
			$('[data-hasqtip]').qtip('enable');
		}
	}
}

function ui_ratio(w, h) {
	return (h == 0) ? w : ui_ratio(h, w % h);
}
{/literal}
</script>
{/if}