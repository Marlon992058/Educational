var tmOption = {
	add : function() {
		var username = $("#username").val();
		var age = $("#age").val();
		var sex = $("#sex input[name='sex']:checked").val();
		var birthday = $("#birthday").val();
		if(isEmpty(username)){
			tip("该选项是必填项！","warn");
			$("#username").focus();
			return;
		}
		if(isEmpty(age)){
			tip("该选项是必填项！","warn");
			$("#age").focus();
			return;
		}
		if(isEmpty(birthday)){
			tip("该选项是必填项！","warn");
			$("#birthday").focus();
			return;
		}
		var params = {
			username : username,
			age : age,
			sex : sex,
			birthday : birthday
		};
		$.ajax({
			type : "post",
			url : adminPath + "/user/adduser",
			data : params,
			success : function(data) {
				if (data == "success") {
					window.location = "list";
				} else {
					tip("保存失败！","warn");
				}
			}
		});
	},
	del : function(obj) {
		var r = confirm("您确定删除吗？");
		if (r == true) {
			var id = $(obj).data("opid");
			$.ajax({
				type : "post",
				url : adminPath + "/user/del",
				data : {"id" : id},
				success : function(data) {
					if (data == "success") {
						$("#user_" + id).remove().fadeOut("slow");
					} else {
						tip("删除失败！","warn");
					}
				}
			});
		}

	},
	update : function(obj) {
		var id = obj;
		var username = $("#username").val();
		var age = $("#age").val();
		var sex = $("#sex input[name='sex']:checked").val();
		var birthday = $("#birthday").val();
		var params = {
			id : id,
			username : username,
			age : age,
			sex : sex,
			birthday : birthday
		};
		$.ajax({
			type : "post",
			url : adminPath + "/user/updateUser",
			data : params,
			success : function(data) {
				if (data == "success") {
					window.location = basePath + "/user/list";
				} else {
					tip("更新失败！","warn");
				}
			}
		});
	}
};