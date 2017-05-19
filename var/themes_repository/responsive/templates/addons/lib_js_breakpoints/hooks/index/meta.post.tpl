{if $addons.lib_js_breakpoints.lib_js_brk_enable}
<style type="text/css">
body:after {
	content: 'widescreen';
	display: none;
}
@media screen and ({$addons.lib_js_breakpoints.lib_js_brk_focal}: {$addons.lib_js_breakpoints.lib_js_brk_xl}){
	body:after {
		content: 'extra-large';
	}
}
@media screen and ({$addons.lib_js_breakpoints.lib_js_brk_focal}: {$addons.lib_js_breakpoints.lib_js_brk_lg}){
	body:after {
		content: 'large';
	}
}
@media screen and ({$addons.lib_js_breakpoints.lib_js_brk_focal}: {$addons.lib_js_breakpoints.lib_js_brk_med}){
	body:after {
		content: 'medium';
	}
}
@media screen and ({$addons.lib_js_breakpoints.lib_js_brk_focal}: {$addons.lib_js_breakpoints.lib_js_brk_sm}){
	body:after {
		content: 'small';
	}
}
@media screen and ({$addons.lib_js_breakpoints.lib_js_brk_focal}: {$addons.lib_js_breakpoints.lib_js_brk_xsm}){
	body:after {
		content: 'tiny';
	}
}
</style>
{/if}