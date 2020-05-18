<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="myStr" prefix="myStr" %>
        <%@ taglib uri="myHidden" prefix="myHidden" %>
            <%@ taglib uri="mySelect" prefix="mySelect" %>
                <%
    String basePath = com.ytd.comm.util.WebPathUtil.getBasePath(request);
%>

                    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
                    <html>
                    <base href="<%=basePath%>">

                    <head>
                        <!--页面说明： 我的详情管理页面  -->
                        <%@ include file="/static/common/emOnline/global.jsp"%>
                            <%@ include file="/static/common/emOnline/meta.jsp"%>
                                <%@ include file="/static/common/progressBar.jsp" %>
                                    <title>
                                        <myStr:str strId="LBL_0000001932" />
                                    </title>
                                    <link href="<%=basePath%>static/css/motorLibrary/manager/userManager.css?version=<%=com.ytd.comm.util.CommonConstant.SOURCE_VERSION %>" rel="stylesheet" type="text/css" />
                                    <link href="<%=basePath%>static/css/motorLibrary/manager/userOrder.css?version=<%=com.ytd.comm.util.CommonConstant.SOURCE_VERSION %>" rel="stylesheet" type="text/css" />
                                    <script type="text/javascript">
                                        pageModuleType = "${pageModuleType}";
                                    </script>
                                    <style type="text/css">
                                        body {
                                            font-family: PingFang SC, Source Han Sans CN, Source Han Serif SC;
                                            letter-spacing: 1.2px;
                                            font-size: 14px;
                                        }
                                    </style>
                    </head>

                    <body style="min-width: 1420px;background-color: #EAECEE;display: none;">
                        <myHidden:hidden strId="MSG_0000000343,MSG_0000000344,LBL_9000000018" />
                        <myHidden:hidden strId="LBL_0000001963,LBL_0000001964,LBL_0000001965,LBL_0000001966" />
                        <myHidden:hidden strId="LBL_0000001967,LBL_0000001968,LBL_0000001969,LBL_0000001970" />
                        <myHidden:hidden strId="LBL_0000000406,LBL_0000000411,LBL_0000001792,LBL_2000000152" />
                        <myHidden:hidden strId="LBL_0000001799,LBL_0000001870,LBL_0000001866,LBL_0000000705" />
                        <myHidden:hidden strId="LBL_2000000152,LBL_0000002074" />

                        <div class="lib_full_body">
                            <div class="lib_head_container" style="height:50px;width:100%;">
                                <div class="lib_company_log_container" style="width:280px;margin-top:8px;">
                                    <a href="javascript:enterMainPage();"><img class="libCompanyLogImg" src="static/images/common/motorDB_logo.png"></a>
                                </div>
                                <div id="lib_head_right_container" class="lib_head_right_container" style="float:right;width:auto;margin-right:20px;">
                                    <%@ include file="/WEB-INF/views/motorLibrary/comm/commHeaderMenu.jsp"%>
                                </div>
                            </div>
                            <%-- 菜单项 --%>
                                <%@ include file="/WEB-INF/views/motorLibrary/comm/commUbmMainMenu.jsp"%>
                                    <div class="urm_main_container">
                                        <div id="md4EM_option_container" class='md4EM_option_container'>
                                            <%-- 左侧菜单项 --%>
                                                <div class='md4EM_option_left'>
                                                    <ul class="md4EM_option_menu">
                                                        <li class="firstLevel" id="md4EM_option_item_1000" onclick="javascript:selectOptionMenu(1000);">
                                                            <span><myStr:str strId="LBL_0000001933" /></span>
                                                        </li>
                                                        <li class="firstLevel" id="md4EM_option_item_2000" onclick="javascript:selectOptionMenu(2000);">
                                                            <span><myStr:str strId="LBL_0000001934" /></span>
                                                        </li>
                                                        <li class="firstLevel" id="md4EM_option_item_3000" onclick="javascript:selectOptionMenu(3000);">
                                                            <span><myStr:str strId="LBL_0000001799" /></span>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <%-- 右侧显示内容 --%>
                                                    <div class='md4EM_option_right'>
                                                        <%-- 订单筛查 --%>
                                                            <div class="flexDiv tableSearchTop">
                                                                <div>
                                                                    <div>服务状态:</div>
                                                                    <div class="btn-group">
                                                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <span>全部状态</span> <span class="caret"></span>
							  </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="javascript:void(0);">全部状态</a></li>
                                                                            <li><a href="javascript:void(0);">使用中</a></li>
                                                                            <li><a href="javascript:void(0);">未激活</a></li>
                                                                            <li><a href="javascript:void(0);">已过期</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <div>交易状态:</div>
                                                                    <div class="btn-group">
                                                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    <span>全部状态</span> <span class="caret"></span>
							  </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="javascript:void(0);">全部状态</a></li>
                                                                            <li><a href="javascript:void(0);">支付成功</a></li>
                                                                            <li><a href="javascript:void(0);">未完成</a></li>
                                                                            <li><a href="javascript:void(0);">交易关闭</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>

                                                                <div class="tableSearchIpt">
                                                                    <input type="text" placeholder="输入订单号商品名称" class="">
                                                                    <i class="fa fa-search fa-fw fa-lg" aria-hidden="true"></i>
                                                                </div>
                                                            </div>
                                                            <%-- 我的订单 --%>
                                                                <div id="md4EM_option_content_1000" class="md4EM_option_content_Item">
                                                                    <%-- 标题 --%>
                                                                        <table id="md4EM_table_title" class="md4EM_recordTableTitle">
                                                                            <colgroup>
                                                                                <col class="md4EM_tradeRecordTable_col1">
                                                                                <col class="md4EM_tradeRecordTable_col2">
                                                                                <col class="md4EM_tradeRecordTable_col3">
                                                                                <col class="md4EM_tradeRecordTable_col4">
                                                                                <col class="md4EM_tradeRecordTable_col5">
                                                                                <col class="md4EM_tradeRecordTable_col6">
                                                                                <col class="md4EM_tradeRecordTable_col7">
                                                                                <col class="md4EM_tradeRecordTable_col8">
                                                                            </colgroup>
                                                                            <tbody>
                                                                                <tr class="md4EM_tradeRecordTable_tr">
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_2000000058" />
                                                                                    </th>
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_0000000078" />
                                                                                    </th>
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_0000001935" />
                                                                                    </th>
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_0000001937" />
                                                                                    </th>
                                                                                    <th>服务时间</th>
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_0000001936" />
                                                                                    </th>
                                                                                    <th>
                                                                                        <myStr:str strId="LBL_0000001940" />
                                                                                    </th>
                                                                                    <th>
                                                                                        <div class="invoiceCon">
                                                                                            <span>发票服务</span>
                                                                                            <i class="fa fa-info-circle fa-fw" aria-hidden="true"></i>
                                                                                            <div class="invoiceJump">
                                                                                                <div class="invoiceJumpTitle">发票服务规则</div>
                                                                                                <p class="invoiceJumpText">一、发票开具规则： 1）订单支付完成后，电子发票在24小时内开具(如在月初1-6号则48小时内开具)；增值税专用发票(纸质)如资质审核通过，将在订单完成后3-4个工作日内为您寄出，邮寄信息详见发票信息页；2）发票开具金额为您实际支付金额，不包括优惠券等支付金额；
                                                                                                </p>
                                                                                                <p class="invoiceJumpText">二、发票补开换开及修改规则： 1）发票开具成功后，1年内可支持一次发票换开； 2）更换增值税专用发票，需将原票寄回，邮寄地址请见申请换开信息页；
                                                                                                </p>
                                                                                            </div>
                                                                                        </div>
                                                                                    </th>

                                                                                    <%-- <c:choose>
                                        <c:when test="${sessionScope.userSessionInfo.userLang == 'en_US'}">
	                                         <th style="min-width: 140px;"><myStr:str strId="LBL_0000001938" /></th>
	                                         <th style="min-width: 185px;"><myStr:str strId="LBL_0000001939" /></th> 
	                                         <th class="lastTh" style="min-width: 150px;"><myStr:str strId="LBL_0000001940" /></th>  
                                        </c:when>
                                        <c:otherwise>
                                             <th><myStr:str strId="LBL_0000001938" /></th>
	                                         <th ><myStr:str strId="LBL_0000001939" /></th>
	                                         <th class="lastTh"><myStr:str strId="LBL_0000001940" /></th>  
                                        </c:otherwise>
                                    </c:choose> --%>

                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <%-- 数据 --%>
                                                                            <div id="md4EM_recordTableDiv" class="">

                                                                            </div>
                                                                            <ul class="myOrderUl">
                                                                                <li>
                                                                                    <div class="myOrderTop">
                                                                                        <div>
                                                                                            <span class="myOrderTopDate">2020-05-14</span><span>订单编号:</span><span class="myOrderTopNumber">20200514174238d1030</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="myOrderCon">
                                                                                        <ul class="myOrderLeft">
                                                                                            <li>
                                                                                                <div class="myOrderLeft1">
                                                                                                    <span>EasiMotor Online 增值服务</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft2">
                                                                                                    <div>
                                                                                                        <p>存储空间:</p>
                                                                                                        <p class="myOrderLeftValue">1 GB</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="myOrderLeft3">
                                                                                                    <span>￥30</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft4">
                                                                                                    <span>未支付</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft5">
                                                                                                    <span>2019-01-10</span><span>至</span><span>2022-03-01</span>
                                                                                                </div>
                                                                                            </li>
                                                                                            <li>
                                                                                                <div class="myOrderLeft1">
                                                                                                    <span>EasiMotor Online 增值服务</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft2">
                                                                                                    <div>
                                                                                                        <p>电机类型:</p>
                                                                                                        <p class="myOrderLeftValue">鼠笼式三相感应电机</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="myOrderLeft3">
                                                                                                    <span>￥2000</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft4">
                                                                                                    <span>未支付</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft5">
                                                                                                    <span>2019-01-10</span><span>至</span><span>2022-03-01</span>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                        <div class="myOrderRight">
                                                                                            <div class="myOrderLeft6">
                                                                                                <span>￥2030</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft7">
                                                                                                <span>待支付</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft8">
                                                                                                <div class="invoiceCtrl">
                                                                                                    <div>已开票</div>
                                                                                                    <div class="invoiceCtrlBlue">申请换开</div>
                                                                                                    <div class="invoiceCtrlSee">
                                                                                                        <span>查看发票</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li>
                                                                                    <div class="myOrderTop">
                                                                                        <div>
                                                                                            <span class="myOrderTopDate">2020-05-14</span><span>订单编号:</span><span class="myOrderTopNumber">20200514174238d1030</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="myOrderCon">
                                                                                        <ul class="myOrderLeft">
                                                                                            <li>
                                                                                                <div class="myOrderLeft1">
                                                                                                    <span>供需对接广场会员</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft2">
                                                                                                    <div>
                                                                                                        <p>1个月VIP</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="myOrderLeft3">
                                                                                                    <span>￥500</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft4">
                                                                                                    <span>使用中</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft5">
                                                                                                    <span>2019-01-10</span><span>至</span><span>2022-03-01</span>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                        <div class="myOrderRight">
                                                                                            <div class="myOrderLeft6">
                                                                                                <span>￥288</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft7">
                                                                                                <span>支付成功</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft8">
                                                                                                <div class="invoiceCtrl">
                                                                                                    <div>已开票</div>
                                                                                                    <div class="invoiceCtrlBlue">申请换开</div>
                                                                                                    <div class="invoiceCtrlSee">
                                                                                                        <span>查看发票</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="waitOrder">
                                                                                    <div class="myOrderTop">
                                                                                        <div>
                                                                                            <span class="myOrderTopDate">2020-05-14</span><span>订单编号:</span><span class="myOrderTopNumber">20200514174238d1030</span>
                                                                                        </div>
                                                                                        <div class="redHeadRight">
                                                                                            <span>剩余：</span><span>28分36秒</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="myOrderCon">
                                                                                        <ul class="myOrderLeft">
                                                                                            <li>
                                                                                                <div class="myOrderLeft1">
                                                                                                    <span>供需对接广场会员</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft2">
                                                                                                    <div>
                                                                                                        <p>1个月VIP</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="myOrderLeft3">
                                                                                                    <span>￥500</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft4">
                                                                                                    <span>未激活</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft5">
                                                                                                    <span>2019-01-10</span><span>至</span><span>2022-03-01</span>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                        <div class="myOrderRight">
                                                                                            <div class="myOrderLeft6">
                                                                                                <span>￥288</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft7">
                                                                                                <div class="">
                                                                                                    <p>未完成</p>
                                                                                                    <p class="cancelPay">取消订单</p>
                                                                                                    <p><button type="button" class="orderPay">立即支付</button></p>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="myOrderLeft8">
                                                                                                <div class="invoiceCtrl">
                                                                                                    <div>未开票</div>
                                                                                                    <div class="invoiceCtrlBlue">申请开票</div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                                <li class="closeOrder">
                                                                                    <div class="myOrderTop">
                                                                                        <div>
                                                                                            <span class="myOrderTopDate">2020-05-14</span><span>订单编号:</span><span class="myOrderTopNumber">20200514174238d1030</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="myOrderCon">
                                                                                        <ul class="myOrderLeft">
                                                                                            <li>
                                                                                                <div class="myOrderLeft1">
                                                                                                    <span>供需对接广场会员</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft2">
                                                                                                    <div>
                                                                                                        <p>1个月VIP</p>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="myOrderLeft3">
                                                                                                    <span>￥500</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft4">
                                                                                                    <span>未激活</span>
                                                                                                </div>
                                                                                                <div class="myOrderLeft5">
                                                                                                    <span>2019-01-10</span><span>至</span><span>2022-03-01</span>
                                                                                                </div>
                                                                                            </li>
                                                                                        </ul>
                                                                                        <div class="myOrderRight">
                                                                                            <div class="myOrderLeft6">
                                                                                                <span>￥288</span>
                                                                                            </div>
                                                                                            <div class="myOrderLeft7">
                                                                                                <div class="">
                                                                                                    <p>交易关闭</p>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="myOrderLeft8">
                                                                                                <div class="invoiceCtrl">
                                                                                                    <div>未开票</div>
                                                                                                    <div class="invoiceCtrlBlue">申请开票</div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>
                                                                            </ul>
                                                                </div>
                                                                <%-- 可以使用 --%>
                                                                    <div id="md4EM_option_content_2000" class="md4EM_option_content_Item">
                                                                        <%-- 当前使用的服务--%>
                                                                            <div class="md4EM_option_title">
                                                                                <span><myStr:str strId="LBL_0000001941" /></span>
                                                                            </div>
                                                                            <div id="md4EM_purchaseItemListDiv" class="md4EM_option_content">
                                                                            </div>
                                                                            <%-- 当前可用服务明细--%>
                                                                                <div class="md4EM_option_title">
                                                                                    <span><myStr:str strId="LBL_0000001942" /></span>
                                                                                </div>
                                                                                <div class="md4EM_option_content">
                                                                                    <table class="table table-striped table-condensed table-hover">
                                                                                        <colgroup>
                                                                                            <col class="md4EM_usageTable_col1">
                                                                                            <col class="md4EM_usageTable_col2">
                                                                                        </colgroup>
                                                                                        <tbody id="md4EM_usageTable_tbody">
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000000411" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item1"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001943" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001944" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_9000000286" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001945" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001946" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001947" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000000876" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001948" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001949" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001950" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001951" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001952" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001953" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001954" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001955" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001956" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img13" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001957" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img12" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001958" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <img class="md4EM_usageTable_imgHid md4EM_usageTable_img12" src="static/images/common/index/correct.png" title="">
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001864" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item2"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001799" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item8"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001866" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item3"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001867" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item7"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000001868" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item4"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000002318" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item15"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr class="md4EM_usageTable_tr">
                                                                                                <td class="md4EM_usageTable_td firstTd">
                                                                                                    <span><myStr:str strId="LBL_0000003135" /></span>
                                                                                                </td>
                                                                                                <td class="md4EM_usageTable_td lastTd">
                                                                                                    <span id="md4EM_usageTable_item16"></span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody>
                                                                                    </table>

                                                                                </div>
                                                                    </div>
                                                                    <%-- 存储空间 --%>
                                                                        <div id="md4EM_option_content_3000" class="md4EM_option_content_Item">
                                                                            <div class="md4EM_option_title">
                                                                                <span><myStr:str strId="LBL_0000001959" /></span>
                                                                            </div>
                                                                            <div class="md4EM_storage_part1">
                                                                                <div class="md4EM_storage_normalWord">
                                                                                    <span><myStr:str strId="LBL_0000001960" />：</span>
                                                                                </div>
                                                                                <div class="md4EM_storage_bigWord">
                                                                                    <span id="md4EM_storage_leftSize">32GB</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="md4EM_storage_part2">
                                                                                <div class="md4EM_storage_normalWord">
                                                                                    <span><myStr:str strId="LBL_0000001961" />：</span>
                                                                                </div>
                                                                                <div class="md4EM_storage_normalWord">
                                                                                    <span id="md4EM_storage_totalSize">52GB</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="md4EM_storage_part3">
                                                                                <div>
                                                                                    <div class="md4EM_storage_bar">
                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <div class="md4EM_option_title">
                                                                                <span><myStr:str strId="LBL_0000001962" /></span>
                                                                            </div>
                                                                            <div class="md4EM_option_content md4EM_projectTableContent">
                                                                                <table class="table table-striped table-condensed table-hover md4EM_projectTable" id="md4EM_projectTable">
                                                                                    <thead>
                                                                                        <tr class="md4EM_projectTable_tr">
                                                                                            <th class="md4EM_projectTable_th firstTh" style="width:25%;">
                                                                                                <myStr:str strId="LBL_0000000081" />
                                                                                            </th>
                                                                                            <th class="md4EM_projectTable_th" style="width:25%;">
                                                                                                <myStr:str strId="LBL_0000000411" />
                                                                                            </th>
                                                                                            <th class="md4EM_projectTable_th" style="width:25%;">
                                                                                                <myStr:str strId="LBL_0000000156" />
                                                                                            </th>
                                                                                            <th class="md4EM_projectTable_th lastTh" style="width:25%;">
                                                                                                <myStr:str strId="LBL_0000001799" />
                                                                                            </th>
                                                                                            <%-- 
	                                    <th class="md4EM_projectTable_th firstTh" style="width:25%;"><myStr:str strId="LBL_0000000081"/></th>
                                        <th class="md4EM_projectTable_th" style="width:25%;">电机类型</th>
                                        <th class="md4EM_projectTable_th" style="width:20%;"><myStr:str strId="LBL_0000000156"/></th>
                                        <th class="md4EM_projectTable_th" style="width:20%;">存储空间</th>
                                        <th class="md4EM_projectTable_th lastTh" style="width:10%;"><myStr:str strId="LBL_9000000068"/></th>
                                         --%>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody id="md4EM_projectTableBody">
                                                                                    </tbody>
                                                                                </table>
                                                                                <div class="col-sm-12 col-md-12 col-lg-12 md4EM_projectPagination" id="md4EM_projectPagination">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                    </div>
                                        </div>
                                    </div>
                        </div>
                        <div class="invoiceCtrlJump">
                            <div class="invoiceCtrlJumpTitle">
                                <span>增值税电子普通发票</span>
                            </div>
                            <ul class="invoiceCtrlJumpUl">
                                <li>
                                    <div>发票抬头</div>
                                    <div>杭州麦科斯韦网络科技有限公司</div>
                                </li>
                                <li>
                                    <div>纳税人识别号</div>
                                    <div>91330102MA2CDHN72E</div>
                                </li>
                                <li>
                                    <div>发票内容</div>
                                    <div>服务费</div>
                                </li>
                                <li>
                                    <div>联系方式</div>
                                    <div>15868457284</div>
                                </li>
                                <li>
                                    <div>收票人邮箱</div>
                                    <div>huanglu@easi-tech.com</div>
                                </li>
                                <li>
                                    <div>公司地址</div>
                                    <div>杭州市钱江路58号太和广场3号15楼</div>
                                </li>
                            </ul>
                            <!-- 增值税电子普通发票按钮 -->
                            <div class="invoiceCtrlJumpBtns">
                                <button type="button" class="invoiceCtrlJumpBtn">确定</button>
                                <button type="button" class="invoiceCtrlJumpBtn1">申请换开</button>
                            </div>
                            <!-- 增值税专用发票按钮 -->
                            <!-- <div class="invoiceCtrlJumpBtnsA">
           <button type="button" class="invoiceCtrlJumpBtn">确定</button>
        </div> -->
                            <div class="invoiceCtrlJumpClose">
                                <img src="static/images/emonline/industrialchain/close.png">
                            </div>
                        </div>
                        <script>
                            $(".invoiceCon").hover(
                                function() {
                                    $(".invoiceJump").show();
                                },
                                function() {
                                    $(".invoiceJump").hide();
                                });
                            $(".invoiceCtrlSee").click(function() {
                                $(".invoiceCtrlJump").show();
                            });
                            $(".invoiceCtrlJumpBtn").click(function() {
                                $(".invoiceCtrlJump").hide();
                            });
                            $(".invoiceCtrlJumpClose").click(function() {
                                $(".invoiceCtrlJump").hide();
                            });
                        </script>
                    </body>
                    <%@ include file="/static/common/motorLibrary/commJsFile.jsp"%>
                        <script type="text/javascript" src="<%=basePath%>static/js/mine/emOnline/manager/myDetailPage4EM.js?version=<%=com.ytd.emOnline.util.CommonConstant.SOURCE_VERSION %>"></script>

                    </html>