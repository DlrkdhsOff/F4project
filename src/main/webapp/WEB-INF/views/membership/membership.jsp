<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
    function checkAll() {
        let isChecked = document.getElementById("chkall").checked;
        let chks = document.getElementsByName("chk");
        for (let i = 0; i < chks.length; i++) {
            chks[i].checked = isChecked;
        }
    }
    function checkSelectAll()  {
    	  // 전체 체크박스
    	  const checkboxes = document.querySelectorAll('input[name="chk"]');
    	  // 선택된 체크박스
    	  const checked = document.querySelectorAll('input[name="chk"]:checked');
    	  // select all 체크박스
    	  const selectAll = document.querySelector('input[name="chkall"]');
    	  
    	  if(checkboxes.length == checked.length)  {
    	    chkall.checked = true;
    	  }
    	  else {
    	    chkall.checked = false;
    	  }
    	}
    function check() {
    	// 전체 체크박스
  	  const checkboxes = document.querySelectorAll('input[name="chk"]');
  	  // 선택된 체크박스
  	  const checked = document.querySelectorAll('input[name="chk"]:checked');
  	  // select all 체크박스
  	  const selectAll = document.querySelector('input[name="chkall"]');
  	  
  	  if(checkboxes.length == checked.length)  {
  	   		document.f.submit()
  	  }
  	  else {
  	    alert("동의해주세요")
  	    return
  	  }
       
    }
</script>

<style>
button {
	border: 0px solid transparent !important;
	background-color: transparent !important;
}

h3.subtitle {

	padding: 50px 0 50px !important;
	color: #282828;
	font-size: 30px !important;
	font-weight: normal;
	text-align: center;
	background-color: #e9ecef;
	width: 675px;
}

h2.subtitle {
	color: #282828;
	font-size: 24px;
	font-weight: normal;
	text-align: start;
}

.memberbtn {
    width: 30%;
    color: white;
    height: 50px;
    line-height: 50px;
    background-color: #3d8f2d !important;
    border: 1px solid var(--season_color_11);
    font-size: 16px;
    border-radius: 10px;
}

.area1 {
    position: relative;
    width: 1000px;
    margin: 0 !important;
}

p1 {
    padding: 0px 0 30px !important;
}

h3{
	font-size: 20px !important;
} 

.btn1 {
    display: inline-block !important;
    background: #ffcd3e !important;
    border-radius: 10px !important;
    padding: 15px 50px !important;
    style: cursor: pointer !important;
    font-size: 17px !important;
}

</style>
<link href="/style.css" type="text/css" rel="stylesheet">
	
	<div class="area1"> 
	<form name="f" method="GET" action="membership_ok.do">
		<h3 class="subtitle">회원가입</h3>
		<h2 class="subtitle">전체 동의</h2>
		<div class="ec-base-box typeThinBg gStrong" >
			<p>  
				<span>
				<input type="checkbox" name="chkall" class="ec-base-chk" id="chkall" onclick="checkAll();" style="cursor: pointer;"> 
				<em class="checkbox">
				</em>
				</span>
				<label for="chk_all"> 
				
				<strong>이용약관 및 개인정보수집 및 이용에 모두 동의합니다.</strong>   
				</label>
			</p>
		</div>
		<div class="ec-base-box typeThinBg agreeArea">
			<h3>[필수] 이용약관 동의</h3> 
			<div class="content" >
				<div class="fr-view fr-view-mall-agreement" >
				<textArea rows="20" cols="90" >
제1조(목적)
이 약관은 OO 회사(전자상거래 사업자)가 운영하는 OO 사이버 홈페이지(이하 “홈페이지”이라
한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 홈페이지과 이용자의 권리.의무 및
책임사항을 규정함을 목적으로 합니다.
※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」

제2조(정의)
① “홈페이지”이란 OO 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기
위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버홈페이지을
운영하는 사업자의 의미로도 사용합니다.
② “이용자”란 “홈페이지”에 접속하여 이 약관에 따라 “홈페이지”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
③ ‘회원’이라 함은 “홈페이지”에 회원등록을 한 자로서, 계속적으로
 “홈페이지”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
④ ‘비회원’이라 함은 회원에 가입하지 않고 “홈페이지”이 제공하는 서비스를 이용하는 자를 말합니다.
					
제3조 (약관 등의 명시와 설명 및 개정) 
① “홈페이지”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 
    전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 
    개인정보보호책임자등을 이용자가 쉽게 알 수 있도록 00 사이버홈페이지의 초기 서비스화면(전면)에 게시합니다. 다만, 
    약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
② “홈페이지은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을
    이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
③ “홈페이지”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」,
   「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」,
   「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
④ “홈페이지”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 
    이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 
    유예기간을 두고 공지합니다. 이 경우 “홈페이지“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
⑤ “홈페이지”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된
    계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를
    원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “홈페이지”에 송신하여 “홈페이지”의 동의를 받은 경우에는 개정약관 조항이
    적용됩니다.
⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 
   법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
 		
제4조(서비스의 제공 및 변경)
① “홈페이지”은 다음과 같은 업무를 수행합니다.
  1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
  2. 구매계약이 체결된 재화 또는 용역의 배송
  3. 기타 “홈페이지”이 정하는 업무
② “홈페이지”은 재화 또는 용역의 품절
   또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다.
   이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시
   공지합니다.
③ “홈페이지”이 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화등의 품절 또는 기술적	사양의 변경 등의 사유로 변경할 
    경우에는 그 사유를 이용자에게 통지 가능한 주소로 즉시 통지합니다.
④ 전항의 경우 “홈페이지”은 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, “홈페이지”이 고의 또는 과실이 없음을 입증하는	
   경우에는 그러하지 아니합니다.
		
제5조(서비스의 중단) 
① “홈페이지”은 컴퓨터 등 정보통신설비의 보수점검.교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 
   일시적으로 중단할 수 있습니다.
② “홈페이지”은 제1항의 사유로
   서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, “홈페이지”이 고의
   또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
③ 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 
 “홈페이지”은 제8조에 정한 방법으로 이용자에게 통지하고 당초 	“홈페이지”에서 제시한 조건에 따라 소비자에게 보상합니다. 
   다만, “홈페이지”이 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 “홈페이지”에서 통용되는 
   통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.
					
제6조(회원가입) 
① 이용자는 “홈페이지”이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 
   신청합니다.
② “홈페이지”은 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
  1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 
	   후 3년이 경과한 자로서 “홈페이지”의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
  2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
  3. 기타 회원으로 등록하는 것이 “홈페이지”의 기술상 현저히 지장이	있다고 판단되는 경우
	   ③ 회원가입계약의 성립 시기는 “홈페이지”의 승낙이 회원에게 도달한 시점으로 합니다.
	   ④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 “홈페이지”에 대하여 회원정보 수정 등의 방법으로 그 변경사항을 
	      알려야 합니다.
제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 “홈페이지”에 언제든지 탈퇴를 요청할 수 있으며 “홈페이지”은 즉시 회원탈퇴를 처리합니다.
② 회원이 다음 각 호의 사유에 해당하는 경우, “홈페이지”은 회원자격을 제한 및	정지시킬 수 있습니다.
  1. 가입 신청 시에 허위 내용을 등록한 경우
  2. “홈페이지”을 이용하여 구입한 재화 등의 대금, 기타 “홈페이지”이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 
	     않는 경우
  3. 다른 사람의 “홈페이지” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
  4. “홈페이지”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
	   ③ “홈페이지”이 회원 자격을 제한.정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 
	   “홈페이지”은 회원자격을 상실시킬 수 있습니다.
               ④ “홈페이지”이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 
	   30일 이상의 기간을 정하여 소명할 기회를 부여합니다.
제8조(회원에 대한 통지)
① “홈페이지”이 회원에 대한 통지를 하는 경우, 회원이 “홈페이지”과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.
② “홈페이지”은 불특정다수 회원에 대한 통지의 경우 1주일이상 “홈페이지” 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 
     다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.
				
제9조(구매신청) 
① “홈페이지”이용자는 “홈페이지”상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, 
  “홈페이지”은 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.
  1. 재화 등의 검색 및 선택
  2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력
  3. 약관내용, 청약철회권이 제한되는 서비스, 배송료.설치비 등의	비용부담과 관련한 내용에 대한 확인
  4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
  5. 재화등의 구매신청 및 이에 관한 확인 또는 “홈페이지”의 확인에 대한 동의
  6. 결제방법의 선택
② “홈페이지”이 제3자에게 구매자 개인정보를 제공·위탁할 필요가 있는 경우 실제 구매신청 시 구매자의 동의를 받아야 하며, 
    회원가입 시 미리 포괄적으로 동의를 받지 않습니다. 
    이 때 “홈페이지”은 제공되는 개인정보 항목, 제공받는 자, 제공받는 자의 개인정보 이용 목적 및 보유·이용 기간	등을 구매자에게 명시
    하여야 합니다. 다만 「정보통신망이용촉진 및 정보보호 등에 관한 법률」 제25조 제1항에 의한 개인정보 처리위탁의 경우 등 관련 법령에 
    달리 정함이 있는 경우에는 그에 따릅니다.
					
제10조 (계약의 성립)
① “홈페이지”은 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 
     다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다
     는 내용을 고지하여야 합니다.
  1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
  2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
  3. 기타 구매신청에 승낙하는 것이 “홈페이지” 기술상 현저히 지장이 있다고 판단하는 경우
② “홈페이지”의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.
③ “홈페이지”의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 
    등을 포함하여야 합니다.
									
부 칙(시행일) 이 약관은 년 월 일부터 시행합니다. 부 칙(시행일) 이 약관은 년 월 일부터 시행합니다.
	</textArea>
				</div>
			</div>
			<p class="check">
				<span>이용약관에 동의하십니까?</span> 
				<input id="chk1" name="chk" class="ec-base-chk" value="0" type="checkbox" onclick='checkSelectAll(this)' style="cursor: pointer;">
					<label for="termsService">동의함</label>
					
			</p>
		</div>
		<br>
		<div class="ec-base-box typeThinBg agreeArea">
	        <h3>[필수] 개인정보 수집 및 이용 동의</h3>
	        <div class="content">
	            <div class="fr-view fr-view-privacy-required" >
	            <textarea rows="20" cols="90">
** 본 양식은 홈페이지 운영에 도움을 드리고자 샘플로 제공되는 서식으로 홈페이지 운영형태에 따른 수정이 필요합니다. 에 적용하시기 전, 
홈페이지 운영 사항 등을 확인하시고 적절한 내용을 반영하여 사용하시기 바랍니다. **
1. 개인정보 수집목적 및 이용목적
       가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 
               본인  인증 및 금융 서비스
       나. 회원 관리 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 
              만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달
2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 
       법정대리인의 정보
3. 개인정보의 보유기간 및 이용기간 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 
       단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.
       
       가. 회사 내부 방침에 의한 정보 보유 사유 
      o 부정거래 방지 및 홈페이지 운영방침에 따른 보관 : OO년
       나. 관련 법령에 의한 정보보유 사유
	  o 계약 또는 청약철회 등에 관한 기록 -보존이유 : 전자상거래등에서의소비자보호에관한법률 -보존기간 : 5년
	  o 대금 결제 및 재화 등의 공급에 관한 기록 -보존이유: 전자상거래등에서의소비자보호에관한법률 -보존기간 : 5년
	  o 소비자 불만 또는 분쟁처리에 관한 기록 -보존이유 : 전자상거래등에서의소비자보호에관한법률 -보존기간 : 3년
	  o 로그 기록 -보존이유: 통신비밀보호법 -보존기간 : 3개월
※ 동의를 거부할 수 있으나 거부시 회원 가입이 불가능합니다.
	            </textarea>
	            </div>        
	            </div>
	        <p class="check">
	        <span>개인정보 수집 및 이용에 동의하십니까?</span> 
	        <input id="chk2" name="chk" value="1" class="ec-base-chk" type="checkbox" onclick='checkSelectAll(this)' style="cursor: pointer;">
	        <label for="termsPrivacy">동의함</label>
	        
	        </p>
	    </div>
	 
	<div class="ec-base-button" align="center"> <!-- btnSubmitFix sizeM -->
	<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;
        <button type="button" id="btnAgree" class="btn1" onclick="check();" style="cursor: pointer;">다음</button><br><br><br>
    </div>
    </form>
</div>

