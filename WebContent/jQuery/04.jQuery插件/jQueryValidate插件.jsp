<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script>
$().ready(function() {
// 在键盘按下并释放及提交后验证提交表单
  $("#signupForm").validate({
	  	submitHandler:function(form){
            alert("提交事件!");
            form.submit();
        },
	    ignore:".ignore",	//表单中有class属性为ignoe的, 将不进行校验
	    rules: {
	      firstname: "required",
	      lastname: "required",
	      username: {
	        required: true,
	        minlength: 2
	      },
	      password: {
	        required: true,
	        minlength: 5
	      },
	      confirm_password: {
	        required: true,
	        minlength: 5,
	        equalTo: "#password"
	      },
	      email: 
	      {
	        required: true,
	        email: true,
	      },
	      "topic[]": {
	        required: "#newsletter:checked",
	        minlength: 2
	      },
	      agree: "required"
	    },
	    messages: {
	      firstname: "请输入您的名字",
	      lastname: "请输入您的姓氏",
	      username: {
	        required: "请输入用户名",
	        minlength: "用户名必需由两个字母组成"
	      },
	      password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 5 个字母"
	      },
	      confirm_password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 5 个字母",
	        equalTo: "两次密码输入不一致"
	      },
	      email: "请输入一个正确的邮箱",
	      agree: "请接受我们的声明",
	      topic: "请选择两个主题"
	    }
	});
});
</script>
<style>
.error{
	color:red;
}
</style>
</head>
<body>
<form class="cmxform" id="signupForm" method="get" action="http://www.baidu.com">
  <fieldset>
    <legend>验证完整的表单</legend>
    <p>
      <label for="firstname">名字</label>
      <input id="firstname" name="firstname" type="text">
    </p>
    <p>
      <label for="lastname">姓氏</label>
      <input id="lastname" name="lastname" type="text">
    </p>
    <p>
      <label for="username">用户名</label>
      <input id="username" name="username" type="text">
    </p>
    <p>
      <label for="password">密码</label>
      <input id="password" name="password" type="password">
    </p>
    <p>
      <label for="confirm_password">验证密码</label>
      <input id="confirm_password" name="confirm_password" type="password">
    </p>
    <p>
      <label for="email">Email</label>
      <input id="email" name="email" class="ignore" type="email">
    </p>
    <p>
      <label for="agree">请同意我们的声明</label>
      <input type="checkbox" class="checkbox" id="agree" name="agree">
    </p>
    <p>
      <label for="newsletter">我乐意接收新信息</label>
      <input type="checkbox" class="checkbox" id="newsletter" name="newsletter">
    </p>
    <fieldset id="newsletter_topics">
      <legend>主题 (至少选择两个) - 注意：如果没有勾选“我乐意接收新信息”以下选项会隐藏，但我们这里作为演示让它可见</legend>
      <label for="topic_marketflash"></label>
        <input type="checkbox" id="topic_marketflash" value="marketflash" name="topic[]">Marketflash

      <label for="topic_fuzz"></label>
        <input type="checkbox" id="topic_fuzz" value="fuzz" name="topic[]">Latest fuzz
      
      <label for="topic_digester"></label>
        <input type="checkbox" id="topic_digester" value="digester" name="topic[]">Mailing list digester
      
      <label for="topic" class="error" style="display:none">至少选择两个</label>
    </fieldset>
    <p>
      <input class="submit" type="submit" value="提交">
    </p>
  </fieldset>
</form>
</body>
</html>
