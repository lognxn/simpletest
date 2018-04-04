<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>layer-更懂你的web弹窗解决方案</title>
<jsp:include page="/WEB-INF/views/include/taglib.jsp"></jsp:include>
</head>

<body>
    <script>
    function func1() {
        layer.alert('内容');
    }

    function func2() {
        layer.alert('内容', {
            icon: 1,
            skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
        });
    }

    function func3() {
        //询问框
        layer.confirm('您是如何看待前端开发？', {
            btn: ['重要','奇葩'] //按钮
        }, function(){
            layer.msg('的确很重要', {icon: 1});
        }, function(){
            layer.msg('也可以这样', {
                time: 2000, //2s后自动关闭
                btn: ['明白了', '知道了']
            });
        });
    }

    function func4() {
        //提示层
        layer.msg('玩命提示中');
    }

    function func5() {
        //墨绿深蓝风
        layer.alert('墨绿风格，点击确认看深蓝', {
            skin: 'layui-layer-molv' //样式类名
            ,closeBtn: 0
        }, function(){
            layer.alert('偶吧深蓝style', {
                skin: 'layui-layer-lan'
                ,closeBtn: 0
                ,shift: 4 //动画类型
            });
        });
    }

    function func6() {
        //捕获页
        layer.open({
            type: 1,
            shade: false,
            title: false, //不显示标题
            content: $('.layer_notice'), //捕获的元素
            cancel: function(index){	//点xx的时候触发
                layer.close(index);
                this.content.show();
                layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', {time: 2000, icon:6});
            }
        });
    }

    function func7() {
        //页面层
        layer.open({
            type: 1,
            skin: 'layui-layer-rim', //加上边框
            area: ['420px', '240px'], //宽高
            content: 'html内容'
        });
    }

    function func8() {
        //自定页
        layer.open({
            type: 1,
            skin: 'layui-layer-demo', //样式类名
            closeBtn: 0, //不显示关闭按钮
            shift: 2,
            area: ['420px', '240px'], //宽高
            shadeClose: true, //开启遮罩关闭
            content: '内容'
        });
    }

    function func9() {
        //tips层
        layer.tips('Hi，我是tips', $("#tips"));
    }

    function func10() {
        //iframe层
        layer.open({
            type: 2,
            title: 'layer mobile页',
            shadeClose: true,
            shade: 0.8,
            area: ['380px', '90%'],
            content: 'http://m.baidu.com' //iframe的url
        }); 
    }

    function func11() {
        //iframe窗
        layer.open({
            type: 2,
            title: false,
            closeBtn: 0, //不显示关闭按钮
            shade: [0],
            area: ['340px', '215px'],
            offset: 'auto', //右下角弹出
            time: 2000, //2秒后自动关闭
            shift: 2,
            content: ['test/guodu.html', 'no'], //iframe的url，no代表不显示滚动条
            end: function(){ //此处用于演示
                layer.open({
                    type: 2,
                    title: '百度一下，你就知道',
                    shadeClose: true,
                    shade: false,
                    maxmin: true, //开启最大化最小化按钮
                    area: ['1150px', '650px'],
                    content: 'http://www.baidu.com'
                });
            }
        });
    }

    function func12() {
        //加载层
        var index = layer.load(1, {shade: false}); //0代表加载的风格，支持0-2
    }

    function func13() {
        //loading层
        var index = layer.load(1, {
            shade: [0.1,'#fff'] //0.1透明度的白色背景
        });
    }

    function func14() {
        //小tips
        layer.tips('我是另外一个tips，只不过我长得跟之前那位稍有些不一样。', $('#tips2'), {
            tips: [1, '#3595CC'],
            time: 4000
        });
    }

    function func15() {
        //prompt层
        layer.prompt({
            title: '输入任何口令，并确认',
            formType: 1 //prompt风格，支持0-2
        }, function(pass){
            layer.prompt({title: '随便写点啥，并确认', formType: 2}, function(text){
                layer.msg('演示完毕！您的口令：'+ pass +' 您最后写下了：'+ text);
            });
        });
    }

    function func16() {
        //tab层
        layer.tab({
            area: ['600px', '300px'],
            tab: [{
                title: 'TAB1', 
                content: '内容1'
            }, {
                title: 'TAB2', 
                content: '内容2'
            }, {
                title: 'TAB3', 
                content: '内容3'
            }]
        });
    }


    function openpage() {
        layer.config({
            extend: 'extend/layer.ext.js'
        });  
        //页面一打开就执行，放入ready是为了layer所需配件（css、扩展模块）加载完毕
        layer.ready(function() {
            //官网欢迎页
            layer.open({
                type: 2,
                skin: 'layui-layer-lan',
                title: 'layer弹层组件',
                fix: false,
                shadeClose: true,
                maxmin: true,
                area: ['1000px', '500px'],
                content: 'https://www.baidu.com'
            });
            layer.msg('欢迎使用layer');
        }); 
    }
    </script>

    <div class="layer_notice">hello,i'm layer!</div>
    <button id="func1" onclick="func1();">初体验</button>
    <button id="func2" onclick="func2();">皮肤</button>
    <button id="func3" onclick="func3();">询问框</button>
    <button id="func4" onclick="func4();">提示层</button>
    <button id="func5" onclick="func5();">蓝色风格</button>
    <button id="func6" onclick="func6();">捕捉页</button>
    <button id="func7" onclick="func7();">页面层</button>
    <button id="func8" onclick="func8();">自定义</button>
    <button id="func9" onclick="func9();">tips层</button>
    <button id="func10" onclick="func10();">iframe层</button>
    <button id="func11" onclick="func11();">iframe窗</button>
    <button id="func12" onclick="func12();">加载层</button>
    <button id="func13" onclick="func13();">loading层</button>
    <button id="func14" onclick="func14();">小tips</button>
    <button id="func15" onclick="func15();">prompt层</button>
    <button id="func16" onclick="func16();">tab层</button>
    <button id="openpage" onclick="openpage();">openpage</button>
    <button id="tips">tips</button>
    <button id="tips2">tips2</button>
</body>

</html>