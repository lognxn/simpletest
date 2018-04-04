<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../dataTablesInclude/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- <style>
        .showslider {
            width: 80%;
            height: 100%;
            background-color: #fff;
            border: 1px solid #ccc;
            position: absolute;
            top: 9px;
        }
 
        .addselect {
            border-radius: 2px;
            display: inline-block;
            background-color: #ccc;
            height: 12px;
            width: 16px;
            text-align: center;
            color: #fff;
            font-size: 9px;
            font-family: Arial;
            position: relative;
            margin-left: 4px;
            cursor: pointer;
            overflow: hidden;
            vertical-align: top;
            top: 1px;
        }
 
        .addselect select {
            width: 44px;
            opacity: 0;
            position: absolute;
            left: 0;
            top: 0;
            cursor: pointer;
        }
 
        table.dataTable tbody th, table.dataTable th, table.dataTable tbody td {
            font-size: 12px;
            text-align: left;
        }
 
        table.dataTable thead th {
            padding: 0 8px;
        }
    </style> -->
<title>Insert title here</title>
<script type="text/javascript" charset="utf8" src="02列删除隐藏.js"></script>
</head>
<body>
<div class="domab">
    <div class="" style="float:right;">
        <label>
            模糊查询：
            <input type="text" class="dsearch" placeholder="" aria-controls="example"></label>
    </div>
 
    <button id="button" style="float:left;">删除选中的行</button>
        <button class="showcol">列段显示/隐藏</button>
        <ul class="showul">
            <li>
                <input type="checkbox" class="toggle-vis" data-column="2"/>
                服务器名称
            </li>
            <li>
                <input type="checkbox" class="toggle-vis" data-column="3"/>
                IP
            </li>
            <li>
                <input type="checkbox" class="toggle-vis" data-column="4"/>
                CPU/内存
            </li>
            <li>
                <input type="checkbox" class="toggle-vis" data-column="5"/>
                数据盘大小
            </li>
            <li>
                <input type="checkbox" class="toggle-vis" data-column="6"/>
                操作系统
            </li>
            <li>
                <input type="checkbox" class="toggle-vis" data-column="7"/>
                状态
            </li>
        </ul>
    <div style="clear:both;"></div>
</div>
<div class="wt100" style="position:relative; overflow:hidden; height:100%">
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th style=" width:1px; padding:0"></th>
            <th style="width:30px; padding:10px 0 10px 10px">
                <input type="checkbox" id="checkAll"></th>
            <th>服务器名称</th>
            <th>IP</th>
            <th>CPU/内存</th>
            <th>数据盘大小</th>
            <th>操作系统</th>
            <th>状态</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtest</a>
            </td>
            <td>192.168.13.7</td>
            <td>3核/1G</td>
            <td>5G</td>
            <td>CentOS 56.5</td>
            <td>运行中</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtdfest</a>
            </td>
            <td>192.168.136.56</td>
            <td>1核/3G</td>
            <td>3G</td>
            <td>
                <div style="height:21px; line-height:21px; overflow:hidden; width:100px;">CentO核核核核核核核核核核核核核核核核核核核核核vS
                    53.5
                </div>
            </td>
            <td>已停止</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsfdqtest</a>
            </td>
            <td>192.165.13.56</td>
            <td>1核/16G</td>
            <td>2G</td>
            <td>CentOS 52.5</td>
            <td>运行中</td>
        </tr>
 
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtest</a>
            </td>
            <td>192.168.13.7</td>
            <td>3核/1G</td>
            <td>5G</td>
            <td>CentOS 56.5</td>
            <td>运行中</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtdfest</a>
            </td>
            <td>192.18.136.56</td>
            <td>1核/3G</td>
            <td>13G</td>
            <td>CentOS 53.5</td>
            <td>已停止</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsfdqtest</a>
            </td>
            <td>192.165.13.56</td>
            <td>1核/16G</td>
            <td>2G</td>
            <td>CntOS 52.5</td>
            <td>运行中</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtest</a>
            </td>
            <td>192.168.13.7</td>
            <td>3核/1G</td>
            <td>5G</td>
            <td>CentOS 56.5</td>
            <td>运行中</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">lsqtdfest</a>
            </td>
            <td>192.168.136.56</td>
            <td>1核/3G</td>
            <td>3G</td>
            <td>CentOS 53.5</td>
            <td>已停止</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true" onClick="clickDom(this);">aaaaaaaaaaaaaaaaaa</a>
            </td>
            <td>192.165.13.56</td>
            <td>1核/16G</td>
            <td>2G</td>
            <td>CentOS 52.5</td>
            <td>运行中</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="checkList"></td>
            <td>
                <a class="clickdom" href="javascript:;" isclick="true"
                   onClick="clickDom(this);">bbbbbbbbbbbbbbbbbbbb</a>
            </td>
            <td>192.165.13.56</td>
            <td>1核/16G</td>
            <td>2G</td>
            <td>CentOS 52.5</td>
            <td>运行中</td>
        </tr>
 
        </tbody>
    </table>
    <div class="showslider">
        <button class="closediv">关闭</button>
    </div>
</div>
</body>
</html>