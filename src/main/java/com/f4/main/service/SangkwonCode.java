package com.f4.main.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class SangkwonCode {

    private final Map<String, Map<String, String>> storeData;

    public SangkwonCode() {
        storeData = new HashMap<>();
        
        Map<String, String> chicken = new HashMap<>();
        chicken.put("BBQ", "20161241");
        chicken.put("네네치킨", "20080100061");
        chicken.put("교촌치킨", "20080600002");
        chicken.put("BHC", "20080100655");
        chicken.put("푸라닭", "20150218");

        // 피자
        Map<String, String> pizza = new HashMap<>();
        pizza.put("도미노", "20080100159");
        pizza.put("파파존스", "20080100076");
        pizza.put("피자헛", "20080100397");
        pizza.put("피자스쿨", "20080100190");
        pizza.put("피자알볼로", "20100100136");

        // 족발
        Map<String, String> jokbal_Bossam = new HashMap<>();
        jokbal_Bossam.put("원할머니", "20080500019");
        jokbal_Bossam.put("장충동", "20080500005");
        jokbal_Bossam.put("마왕족발", "20160884");
        jokbal_Bossam.put("귀한족발", "20190687");
        jokbal_Bossam.put("가장맛있는족발", "20120100533");

        // 일식
        Map<String, String> japanese = new HashMap<>();
        japanese.put("미소야", "20080100430");
        japanese.put("백소정", "20211853");
        japanese.put("아비꼬", "20090100504");
        japanese.put("소노야", "20090100341");
        japanese.put("쿠우쿠우", "20130184");

        // 중식
        Map<String, String> chinese = new HashMap<>();
        chinese.put("홍콩반점", "20080100210");
        chinese.put("교동짬뽕", "20140589");
        chinese.put("경성양꼬치", "20120100631");
        chinese.put("소림마라", "20210315");
        chinese.put("홍짜장", "20090100165");

        // 한식
        Map<String, String> korean = new HashMap<>();
        korean.put("본죽", "20080100243");
        korean.put("두찜", "20160858");
        korean.put("박가부대", "20080500020");
        korean.put("팔각도", "20200724");
        korean.put("큰맘할매순대국", "20140292");

        // 양식
        Map<String, String> western = new HashMap<>();
        western.put("빕스", "20190227"); // 서비스 키를 확인하세요
        western.put("애슐리", "20171254");
        western.put("아웃백", "20110600026");
        western.put("매드포갈릭", "20212585");
        western.put("서가앤쿡", "20110600026");

        // 분식
        Map<String, String> snack = new HashMap<>();
        snack.put("엽기떡볶이", "20130100283");
        snack.put("죠스떡볶이", "20100100077");
        snack.put("이삭토스트", "20080500031");
        snack.put("고봉민", "20110300059");
        snack.put("두끼", "20150385");

        // 주점
        Map<String, String> pub = new HashMap<>();
        pub.put("범맥주", "20210532");
        pub.put("인쌩맥주", "20200239");
        pub.put("한신포차", "20090100498");
        pub.put("역전할머니맥주", "20161219");
        pub.put("경성주막", "20160571");

        // 패스트푸드
        Map<String, String> fastFood = new HashMap<>();
        fastFood.put("맥도날드", "20080100157");
        fastFood.put("롯데리아", "20080100155");
        fastFood.put("버거킹", "20130100358");
        fastFood.put("KFC", "20190835");
        fastFood.put("써브웨이", "20190929");

        // 아시안
        Map<String, String> asian = new HashMap<>();
        asian.put("하노이별", "20161185");
        asian.put("포메인", "20100100405");
        asian.put("생어거스틴", "20120100060");
        asian.put("미스사이공", "20150982");
        asian.put("소담촌", "20141179");

        // 디저트
        Map<String, String> dessert = new HashMap<>();
        dessert.put("베스킨라빈스", "20080500015");
        dessert.put("설빙", "20130249");
        dessert.put("왕가탕후루", "20200176");
        dessert.put("뚜레쥬르", "20080100039");
        dessert.put("파리바게트", "20080200064");

        // 카페
        Map<String, String> cafe = new HashMap<>();
        cafe.put("스타벅스", "20080500016");
        cafe.put("이디야", "20080100014");
        cafe.put("메가커피", "20160628");
        cafe.put("빽다방", "20090100502");
        cafe.put("투썸", "20080100618");

        // 전체 데이터 맵에 추가
        storeData.put("치킨", chicken);
        storeData.put("피자", pizza);
        storeData.put("족발/보쌈", jokbal_Bossam);
        storeData.put("일식", japanese);
        storeData.put("중식", chinese);
        storeData.put("한식", korean);
        storeData.put("양식", western);
        storeData.put("분식", snack);
        storeData.put("주점", pub);
        storeData.put("패스트푸드", fastFood);
        storeData.put("아시안", asian);
        storeData.put("디저트", dessert);
        storeData.put("카페", cafe);
    }
    public String find(String key) {
        for (Map<String, String> category : storeData.values()) {
            if (category.containsKey(key)) { 
                return category.get(key);
            }
        }
        return null; // 일치하는 key가 없는 경우
    }

}