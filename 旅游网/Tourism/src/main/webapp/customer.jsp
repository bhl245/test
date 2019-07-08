﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="check.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>途乐行--首页</title>
    <link href="qt/css/layout.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="qt/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="qt/js/index.js"></script>
</head>

<body>
<!--头部-->
<div id="top-cont">
    <div id="top-min">
        <div id="min-left"></div>
        <div id="min-right"></div>
    </div>
</div>
<!--导航-->
<div id="menu">
    <div id="menu-m">
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="type.jsp">境内游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="#">境外游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="#">热门游</a></li>
            <li style="width:8px;"><img src="qt/images/t1.jpg" width="8" height="42"/></li>
            <li><a href="allGroup1.action">团购</a></li>
            <li><a href="cart.jsp"><img src="qt/images/che.jpg" width="176" height="42"/></a></li>
        </ul>
    </div>
</div>
<!--广告位图片-->
<div id="banner"><img src="qt/images/banner.jpg" width="1003" height="93"/></div>

<!--主体内容第一部分开始-->
<div id="content1">
    <!--左侧-->
    <div id="con1-left">
        <div class="con1-1">境内游</div>
        <div class="cs">
            <c:forEach items="${lineList1}" var="lineList1">
                <c:if test="${lineList1.lineType.lineTypeName eq '境内游'}">
                    <ul>
                        <li><a href="#">${lineList1.lineName}</a></li>
                    </ul>
                </c:if>
            </c:forEach>
        </div>
        <div class="con1-2">省内游</div>
        <div class="cs">
            <c:forEach items="${lineList1}" var="lineList1">
                <c:if test="${lineList1.lineType.lineTypeName eq '省内游'}">
                    <ul>
                        <li><a href="#">${lineList1.lineName}</a></li>
                    </ul>
                </c:if>
            </c:forEach>
        </div>
    </div>
    <!--右侧-->
    <div id="con1-right">
        <div id="right-top">
            <div class="banner">
                <ul id="imgs">
                    <li><img src="qt/images/tg.jpg" width="540" height="240"/></li>
                    <li><img src="qt/images/tg2.jpg" width="540" height="240"/></li>
                    <li><img src="qt/images/tg3.jpg" width="540" height="240"/></li>
                    <li><img src="qt/images/tg4.jpg" width="540" height="240"/></li>
                </ul>
                <ul id="numbers">
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                </ul>
            </div>
            <div class="zcdl">
                <ul>
                    <li style="margin-right:3px;">欢迎：${cust.custName}</li>
                    <li><a href="out.action">注销</a></li>
                </ul>
            </div>
            <div class="my">
                <ul>
                    <li><span class="myd">96%</span> 满意度</li>
                    <li class="xt">已有<span class="rs">2569874</span>人预订出游</li>
                    <li class="cls"><a href="#">查看历史订单</a></li>
                </ul>
            </div>
        </div>
        <div id="right-btm">
            <div class="tgj"><span><a href="#">更多旅游特价>></a></span></div>
            <div class="tgjlx">
                <ul style="width:1446px">
                    <li><img src="qt/images/scroll1.jpg" width="160" height="88"/><a href="#">三亚半自助四日游</a><br/>
                        <span>￥1250</span>起 原价4000
                    </li>
                    <li><img src="qt/images/scroll2.jpg" width="160" height="88"/><a href="#">黄山唐模景区三日游</a><br/>
                        <span>￥398</span>起 原价980
                    </li>
                    <li><img src="qt/images/scroll3.jpg" width="160" height="88"/><a href="#">长滩岛四日游</a><br/>
                        <span>￥3199</span>起 原价4800
                    </li>
                    <li><img src="qt/images/scroll4.jpg" width="160" height="88"/><a href="#">毛里求斯七日游</a><br/>
                        <span>￥10369</span>起 原价11398
                    </li>
                    <li><img src="qt/images/scroll5.jpg" width="160" height="88"/><a href="#">阿联酋六日游</a><br/>
                        <span>￥18899</span>起 原价18999
                    </li>
                    <li><img src="qt/images/scroll6.jpg" width="160" height="88"/><a href="#">巴厘岛六日游</a><br/>
                        <span>￥8280</span>起 原价9999
                    </li>
                    <li><img src="qt/images/scroll7.jpg" width="160" height="88"/><a href="#">香港四日游</a><br/>
                        <span>￥2819</span>起 原价6000
                    </li>
                    <li><img src="qt/images/scroll8.jpg" width="160" height="88"/><a href="#">土耳其九日游</a><br/>
                        <span>￥13099</span>起 原价13500
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--主体内容第一部分结束-->
<!--主体内容第二部分开始-->
<div id="con-2">
    <!--左侧开始-->
    <div id="con-2left">
        <div id="con-2left1">
            <div class="con-21"></div>
            <div class="jingdian">
                <ul>
                    <li><a href="#">古琴台</a></li>
                    <li><a href="#">黄鹤楼</a></li>
                    <li><a href="#">海洋世界</a></li>
                    <li><a href="#">武汉东湖</a></li>
                    <li><a href="#">木兰天地</a></li>
                    <li><a href="#">汉正街</a></li>
                    <li><a href="#">坝子岭</a></li>
                    <li><a href="#">武汉欢乐谷</a></li>
                </ul>
            </div>
            <div class="con-22"></div>
            <div class="jingdian">
                <ul>
                    <li><a href="#">澳门</a></li>
                    <li><a href="#">烟台</a></li>
                    <li><a href="#">仰光</a></li>
                    <li><a href="#">约旦</a></li>
                    <li><a href="#">伊朗</a></li>
                    <li><a href="#">德国</a></li>
                    <li><a href="#">缅甸</a></li>
                    <li><a href="#">希腊</a></li>
                </ul>
            </div>
            <div class="con-23"></div>
            <div class="jingdian">
                <ul>
                    <li><a href="#">北京</a></li>
                    <li><a href="#">上海</a></li>
                    <li><a href="#">加拿大</a></li>
                    <li><a href="#">香港</a></li>
                    <li><a href="#">海南</a></li>
                    <li><a href="#">马尔代夫</a></li>
                    <li><a href="#">韩国</a></li>
                    <li><a href="#">福建</a></li>
                </ul>
            </div>
            <div class="picj"><img src="qt/images/bb1.jpg" width="248" height="94"/></div>
            <div class="picj"><img src="qt/images/bb2.jpg" width="248" height="94"/></div>
            <div class="picj"><img src="qt/images/bb3.jpg" width="248" height="94"/></div>
        </div>
    </div>
    <!--左侧结束-->
    <!--右侧开始-->
    <div id="con-2right">
        <div id="con-2meun">
            <ul>
                <li><a href="#">境内游</a></li>
                <li><a href="#">境外游</a></li>
                <li><a href="#">海岛游</a></li>
                <li><a href="#">自驾游</a></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp1.jpg" width="120" height="75"/></a> 产品编号：135356</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[4日游] &nbsp;&nbsp;厦门双飞4日游 &nbsp;&nbsp;交通工具（飞机）</a></div>
                    <div class="w440xx"><a href="#">简介：住1晚鼓浪屿特色旅馆，1天自由活动</a> <br/>
                        本线路已有<span>5144</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥1664元/每人</span></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp2.jpg" width="120" height="75"/></a> 产品编号：135398</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[5日游] &nbsp;&nbsp;海南双飞五日游 &nbsp;&nbsp;交通工具（飞机）</a></div>
                    <div class="w440xx"><a href="#">简介：1晚分界洲海景住宿，蜜月专享，恋恋海豚湾</a> <br/>
                        本线路已有<span>2</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥3517元/每人</span></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp3.jpg" width="120" height="75"/></a> 产品编号：135399</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[6日游] &nbsp;&nbsp;昆大丽双飞6日游&nbsp;&nbsp;交通工具（飞机）</a></div>
                    <div class="w440xx"><a href="#">简介:[清明]
                        <昆大丽双飞6日游>约惠云南，1晚温泉酒店，减100</昆大丽双飞6日游>
                    </a> <br/>
                        本线路已有<span>56</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥1199元/每人</span></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp4.jpg" width="120" height="75"/></a> 产品编号：135490</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[1日游] &nbsp;&nbsp;武汉欢乐谷1日游&nbsp;&nbsp;交通工具（自驾）</a></div>
                    <div class="w440xx"><a href="#">简介：中国文化公园第一连锁品牌，创立于1998年，以“打造世界一流的连锁文化公园”为愿景，旨在为不同的城市，带来同样的欢乐</a> <br/>
                        本线路已有<span>56</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥170元/每人</span></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp5.jpg" width="120" height="75"/></a> 产品编号：135497</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[2日游] &nbsp;&nbsp;香港迪士尼2日游&nbsp;&nbsp;交通工具（飞机）</a></div>
                    <div class="w440xx"><a href="#">简介:香港迪士尼乐园(Disneyland,Hong Kong)的面积只有126.82公顷，是全球面积最小的迪士尼乐园，是世界上的第五个迪士尼乐园。</a>
                        <br/>
                        本线路已有<span>1526</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥55元/每人</span></li>
            </ul>
        </div>


        <div class="con-2inf">
            <ul>
                <li class="w130"><a href="#"><img src="qt/images/cp6.jpg" width="120" height="75"/></a> 产品编号：135498</li>
                <li class="w440">
                    <div class="w440lx"><a href="#">[5日游] &nbsp;&nbsp;海南三亚5日游&nbsp;&nbsp;交通工具（飞机）</a></div>
                    <div class="w440xx"><a href="#">简介:
                        <海南三亚国光豪生5日自助游>国际品牌酒店，专享悠闲度假</海南三亚国光豪生5日自助游>
                    </a> <br/>
                        本线路已有<span>569</span>人出游
                    </div>
                </li>
                <li class="w140"><br/>
                    <span>￥2920元/每人</span></li>
            </ul>


        </div>
    </div>
    <!--主体内容第二部分结束-->
    <!--底部-->
    <div id="foot">
        <div id="foot-t">
            <p>许可证编号：WE125482154 鄂ICP备125478966</p>
            <p><a href="#">隐私保护</a> | <a href="#">诚聘英才</a> | <a href="#">关于我们</a> | <a href="#">网站地图</a> | <a href="#">友情链接</a> |
                <a href="#">商务合作</a></p>
        </div>
    </div>
</div>
</body>
</html>
