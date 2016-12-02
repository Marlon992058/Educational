/**
 * 判断非空
 * @param val
 * @returns {Boolean}
 */
function isEmpty(val) {
	val = $.trim(val);
	if (val == null)
		return true;
	if (val == undefined || val == 'undefined')
		return true;
	if (val == "")
		return true;
	if (val.length == 0)
		return true;
	if (!/[^(^\s*)|(\s*$)]/.test(val))
		return true;
	return false;
}

function isNotEmpty(val) {
	return !isEmpty(val);
}

/* 获取浏览器的版本 */
function getBroswerVersion() {
    var Sys = {};
    var ua = navigator.userAgent.toLowerCase();
    if (ua) {
        window.ActiveXObject ? Sys.version = "ie_" + ua.match(/msie ([\d]+)/)[1] : document.getBoxObjectFor ? Sys.version = "firefox_" + ua.match(/firefox\/([\d.]+)/)[1] : window.MessageEvent && !document.getBoxObjectFor ? Sys.version = "chrome": window.opera ? Sys.version = "opera_" + ua.match(/opera.([\d.]+)/)[1] : window.openDatabase ? Sys.version = ua.match(/version\/([\d.]+)/)[1] : 0;
    }
    return Sys;
}

/*消息提示*/
function tip(message,cls){
	$("#messagetip").remove();
	$("body").append("<div id='messagetip'><span><i class='iconfont icon-bell'></i>"+message+"</span></div>");
	$("#messagetip").animate({top:0},1000).delay(2000).animate({top:-56}).addClass(cls);
}




