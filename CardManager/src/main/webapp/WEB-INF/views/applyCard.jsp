<%--
  Created by IntelliJ IDEA.
  User: wcr
  Date: 18/4/3
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ApplyCard</title>
</head>
<body>
<!--  中间内容  -->
<div class="main_wrap">
    <div class="main clearfix">
        <div class="left_layout" >
            <!--   申请卡基本信息  -->
            <div class="card_basic_infor">
                <p class="c_tit">您选择的信用卡：</p>
                <div class="card_pic"><img src=""></div>
                <p class="card_name"></p>
                <p class="card_intro"></p>
            </div>
            <!--   申请卡特色  -->
            <div class="card_chara">
                <ul class="chara_list" style="display:none">
                    <li><span class="ch_icon"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/sp_icon01.png" width="36" height="36"></span>
                        <div class="ch_text">
                            <p class="pl_2">独家首发<br />
                                网上购物有积分</p>
                        </div>
                        <div class="c"></div>
                    </li>
                    <li><span class="ch_icon"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/sp_icon02.png" width="36" height="36"></span>
                        <div class="ch_text">
                            <p class="pl_2">账单月交易超2000元<br>
                                记双倍积分</p>
                        </div>
                        <div class="c"></div>
                    </li>
                    <li><span class="ch_icon"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/sp_icon03.png" width="36" height="36"></span>
                        <div class="ch_text">
                            <p class="pl_1">最快一天拿卡</p>
                        </div>
                        <div class="c"></div>
                    </li>
                    <li><span class="ch_icon"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/sp_icon04.png" width="36" height="36"></span>
                        <div class="ch_text">
                            <p class="pl_3">首年开卡刷卡1次，免
                                首年年费，首年再刷5
                                次免次年年费</p>
                        </div>
                        <div class="c"></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="right_layout">
            <!--   申请卡进度 -->
            <div class="app_prog_bar apb_1">
                <div class="app_prog_txt"><span class="pr_01 b_span">基本信息</span><span class="pr_02">详细信息</span><span class="pr_03">完成申请</span></div>
            </div>
            <!--   申请卡内容 -->
            <div class="app_content">
                <!--   分栏标题 -->
                <div class="col_title">
                    <div class="g_line"></div>
                    <div class="tit_text">选择你喜欢的卡面</div>
                </div>
                <!--   表单 -->
                <ul class="form_ul">
                    <li>
                        <div class="tit_105 lh_104">卡板：</div>
                        <div class="card_type" id="cardType"></div>
                        <!--
                        <div class="card_type" id="cardType"><a href="javascript:;"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/card_pic.jpg" width="166" height="105"><span></span></a><a href="javascript:;"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/card_pic.jpg" width="166" height="105"><span class="on"></span></a><a href="javascript:;"><img src="https://cdn.citiccard.hunshitong.net/citiccard/cardshop-web/images/card_pic.jpg" width="166" height="105"><span></span></a></div>
                         -->
                        <input id="appCardNbr" name="appCardNbr" type="hidden" value=""/>
                        <!--卡产品编号-->
                        <input id="cardProductId" name="cardProductId" type="hidden" value=""/>
                        <!--渠道代码-->
                        <input id="sourceId" name="sourceId" type="hidden" value=""/>
                        <!--网站代码-->
                        <!--form:hidden path="net_id" />  -->

                        <!-- 卡板图片 -->
                        <input id="card_pic" name="card_pic" type="hidden" value=""/>
                        <!-- 卡片名称 -->
                        <input id="card_nm" name="card_nm" type="hidden" value=""/>
                        <!-- 有效期全时间 -->
                        <input id="limit_date_all" name="limit_date_all" type="hidden" value=""/>
                        <!-- 有效期截止时间 -->
                        <input id="step2_limitedDate" name="step2_limitedDate" type="hidden" value=""/>

                        <div class="c"></div>
                    </li>
                    <li id="yearFeeli">
                        <!--
                          <div class="tit_105 lh_42">年费：</div>
                          <div class="card_cost"><span class="cost_span">2000/年</span><span class="disc_span">首年免年费，刷6笔免次年年费</span></div>
                          <div class="c"></div>
                           -->
                        <div class="form_tips"><span class="err_span"></span></div>
                    </li>
                    <input id="is_ebank" name="is_ebank" type="hidden" value=""/>
                    <input id="yearFee" name="yearFee" type="hidden" value=""/>
                </ul>
                <!--   分栏标题 -->
                <div class="col_title">
                    <div class="g_line"></div>
                    <div class="tit_text">填写初审信息<span class="t_span">（<em class="r_em">*</em>为必填项）</span></div>
                </div>
                <!--   表单 -->
                <ul class="form_ul">
                    <li style="display:inline-block;">
                        <!--   姓名  -->
                        <div class="tit_105"><em class="r_em">*</em> 姓名：</div>
                        <div class="f_box w_155">
                            <div class="input_box">
                                <!-- <input name="" type="text" value="请输入中文姓名"> -->
                                <input id="userName" name="userName" type="text" value="" maxlength="15"/>
                            </div>
                            <!--   姓名报错提示
                            <div class="form_tips"><span class="err_span">请输入正确姓名，至少两个汉字</span></div>
                            -->
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <div class='succ_tips'><span class='succ_span name_error' style="visibility:hidden"></span></div>
                        <!--   拼音  -->
                        <div class="tit_105" style="width:69px"><em class="r_em">*</em> 拼音：</div>
                        <div class="f_box">
                            <div class="input_box w_250">
                                <input id="userNamePY" name="userNamePY" type="text" value="" maxlength="30"/>
                            </div>
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <!--   成功提示
                        <div class="succ_tips"><span class="succ_span"></span></div>
                        -->
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em">*</em> 身份证号：</div>
                        <div class="f_box">
                            <div class="input_box w_505">
                                <input id="applyIdNbr" name="applyIdNbr" type="text" value="" maxlength="20"/>
                            </div>
                            <!--   身份证报错提示
                            <div class="form_tips"><span class="err_span">身份证号格式错误,需为18位数字</span></div>
                             -->
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <!--   成功提示  -->
                        <!--
                        <div class="succ_tips"><span class="succ_span"></span></div>
                        -->
                        <!--证件类型，默认为身份证1-->
                        <input id="applyIdNbrType" name="applyIdNbrType" value="1" type="hidden" value=""/>
                        <div class="c"></div>
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em"> </em> 发证机关：</div>
                        <div class="f_box">
                            <div class="input_box w_505">
                                <input id="step2_depart" name="step2_depart" type="text" value="" maxlength="15"/>
                            </div>
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <div class="c"></div>
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em"> </em> 有效期：</div>
                        <div class="f_box">
                            <div class="input_box w_240">
                                <input readonly id="limit_date_start" onblur="inputEventTry(this);" />
                            </div>
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <div class="f_box limit-end">
                            <!-- 身份证有效期 -->
                            <select id="limit_date_len" class="input_box w_240" onchange="bindChoiceData();selectEventTry(this);" style="height: 30px">
                                <option value="">（选填）请选择有效时长</option>
                                <option value="0">10年</option>
                                <option value="1">20年</option>
                                <option value="2">长期</option>
                            </select>
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <div class="c"></div>
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em">*</em> 邮箱：</div>
                        <div class="f_box">
                            <div class="input_box w_505">
                                <input id="email" name="email" type="text" value="" autocomplete="off"/>
                            </div>
                            <!--   电子邮箱报错提示
                            <div class="form_tips"><span class="err_span">电子账单将寄往该邮箱，正确格式为:12345678@163.com</span></div>

                            -->
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <!--   成功提示
                        <div class="succ_tips"><span class="succ_span"></span></div>
                        -->
                        <div class="c"></div>
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em">*</em> 手机号码：</div>
                        <div class="f_box">
                            <div class="input_box w_505">
                                <input id="mobile" name="mobile" type="text" value="" maxlength="11"/>
                            </div>
                            <!--   手机号报错提示
                            <div class="form_tips"><span class="err_span">手机号格式不正确</span></div>
                             -->
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <!--   成功提示
                        <div class="succ_tips"><span class="succ_span"></span></div>
                        -->
                        <div class="c"></div>
                    </li>
                    <li>
                        <div class="tit_105"><em class="r_em">*</em> 短信验证码：</div>
                        <div class="code_btn_box"><a class="code_btn" href="javascript:;" onClick="getPhoneCodeByAjax()">免费获取</a><span class="code_span" style="display:none;">60s后重新获取</span></div>
                        <div class="f_box">
                            <div class="input_box w_385">
                                <input id="code" name="code" type="text" value="" maxlength="6"/>
                            </div>
                            <!--   手机号报错提示
                            <div class="form_tips"><span class="err_span">验证码输入错误，需为6位数字</span></div>
                            -->
                            <div class="form_tips"><span class="err_span"></span></div>
                        </div>
                        <!--   成功提示
                        <div class="succ_tips"><span class="succ_span"></span></div>
                         -->
                        <div class="c"></div>
                    </li>
                    <li id="pic_code" style="display:none">
                        <div class="tit_105"><em class="r_em">*</em> 图形验证码：</div>
                        <div class="code_btn_box" onClick="javascript:loadimage();" style="background-color: #ffffff; position: relative; width: 110px; height: 30px; line-height: 30px; text-align: center;" id="pic_text" title="点击图片换一张"><img id="randImage" src="../common/getPicCode.do" style="height: 100%; width: 100%;"></div>
                        <div class="f_box">
                            <div class="input_box w_385">
                                <input id="piccode" name="piccode" type="text" value="" maxlength="4"/>
                            </div>
                            <!--   手机号报错提示
                            <div class="form_tips"><span class="err_span">验证码输入错误，需为6位数字</span></div>
                            -->
                            <div class="form_tips"><span class="err_span err_pic"></span></div>
                        </div>
                        <!--   成功提示
                        <div class="succ_tips"><span class="succ_span"></span></div>
                         -->
                        <div class="c"></div>
                    </li>
                    <!--申请的方式，默认设置为：已有卡申请新卡  -->
                    <input id="type" name="type" value="havaCard" type="hidden" value=""/>
                </ul>

                <div class="check_agree">
	       	 <span class="input_span">
	           <input id="check_submit" type="checkbox"  checked onclick="changeSubmit()">
	         </span>

                    <span class="txt_span">我已阅读并清楚知晓
	         	<a href="javascript:;" onclick="javascript:window.open('http://creditcard.ecitic.com/yongka/zhishi.shtml#kl_nav4');return false;" >《中信银行信用卡（个人卡）领用合约》</a>
				        及该信用卡的相关信息。现金仅用于合理、合规的消费领取，不得进入生产经营及证券市场，股本经营性投资及房地产开发等非消费领域。
			 </span>
                    <span id="txt_span_jdhy" style="display:none">我已阅读并清楚知晓
				<a href="javascript:;" onclick="javascript:window.open('http://creditcard.ecitic.com/yongka/zhishi.shtml#kl_nav4');return false;" >《中信银行信用卡（个人卡）领用合约》</a>
				<a id="jdhy_contract" href="javascript:;" onclick="javascript:window.open('http://creditcard.ecitic.com/yongka/zhishi.shtml#kl_nav4');return false;" >《中信银行信用卡（个人卡）领用合约补充协议——中信易卡合约》</a>
				        及该信用卡的相关信息。现金仅用于合理、合规的消费领取，不得进入生产经营及证券市场，股本经营性投资及房地产开发等非消费领域。根据相关政策要求，如您已持有我行I类借记账户，您获批的<span id="jdhy_prompt_card_name">中信易卡</span>借记账户将为Ⅱ类账户。借记账户使用条款以我行对外公示为准。
			 </span>
                    <span class="txt_span_xjb" style="display:none">我已阅读并清楚知晓
	  			<a href="javascript:;" onclick="javascript:window.open('http://creditcard.ecitic.com/yongka/zhishi.shtml#kl_nav4');return false;" >《中信银行信用卡（个人卡）领用合约》</a>及
				<a href="javascript:;" onclick="javascript:window.open('http://creditcard.ecitic.com/heyue/xianshangdai/xianjinfenqi.html');return false;" >《中信银行信用卡现金分期业务合约》</a>
	 			  的相关信息。现金仅用于合理、合规的消费领域，不得进入生产经营及证券市场，股本经营性投资及房地产开发等非消费领域。
			</span>

                </div>

                <!-- <div class="form_btn_box"><a class="form_red_btn" href="javascript:;" onClick="showPopBox('errPop')">下一步</a></div> -->
                <div class="form_btn_box"  id="submit_btn" ><a  class="form_red_btn" href="javascript:;" id="submit" onclick="window.location.href='${pageContext.request.contextPath}/user/addInformation'">下一步</a></div>


            </div>
        </div>
    </div>
</div>
</body>
</html>