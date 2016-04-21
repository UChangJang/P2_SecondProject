//tabControl
//ver.0.5 20120907 kkh 은마군
//tinyscrollbar 보고 많이 배꼈음

jQuery.tabs = jQuery.tabs || {};

jQuery.tabs.tabControl = {
    options: {
		autoRolling : false,
        timerInterval : 3000		
    }
};

jQuery.fn.tabControls = function (options) {
    var options = jQuery.extend({}, jQuery.tabs.tabControl.options, options);
    this.each(function () {	jQuery(this).data('', new tabControl(jQuery(this), options)); });
    return this;
};

function tabControl(root, options) {
    var oSelf = this;
    var oWrapper = root;
    var oTabControlBody = { obj: jQuery(".tabControlBody", root) };
    var oTabControlTab = { obj: jQuery(".tabControlTab", root) };
	var sTimer = null;
	var sAutoRolling = options.autoRolling;
	var sTimerInterval = options.timerInterval;

    function init() {
        setEvent();		
		if(sAutoRolling == true)
		{
			sTimer = setTimeout(function() { timer(); }, sTimerInterval);
		}
    }

    function setEvent() {
		$(oTabControlTab.obj).each(function(index){
			
			$(this).attr("value", index);
		})
        jQuery(oTabControlTab.obj).hover(function () {
			jQuery(oTabControlTab.obj).removeClass("selected");
			jQuery(oTabControlBody.obj).removeClass("selected");				
			$(this).addClass("selected");			
			jQuery(oTabControlBody.obj).eq($(this).attr("value")).addClass("selected");            
        }, function(){return;});
		
		if(sAutoRolling == true)
		{
			jQuery(oWrapper).hover(function(){ clearInterval(sTimer);}, function(){sTimer = setTimeout(function() { timer(); }, sTimerInterval);});
		}
    }

	function timer(){
		clearTimeout(sTimer);

		var thisIndex = 0;
		jQuery(oTabControlTab.obj).each(function(index){
			if(jQuery(oTabControlTab.obj).eq(index).hasClass("selected") == true)
			{
				thisIndex = index;
			}
		});

		if(thisIndex != (jQuery(oTabControlTab.obj).length - 1))
		{
			thisIndex += 1;
		}
		else
		{
			thisIndex = 0;
		}
		jQuery(oTabControlTab.obj).eq(thisIndex).trigger("mouseover");	

		sTimer = setTimeout(function() { timer(); }, sTimerInterval);
	}


    return init();
}