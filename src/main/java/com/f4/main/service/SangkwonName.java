package com.f4.main.service;


import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;

@Service
public class SangkwonName {

    private final Map<String, Map<String, String>> storeData;

    public SangkwonName() {
        storeData = new HashMap<>();
        
        Map<String, String> chicken = new HashMap<>();
        chicken.put("BBQ", "BBQ");
        chicken.put("네네치킨", "네네치킨");
        chicken.put("교촌치킨", "교촌치킨");
        chicken.put("BHC", "BHC");
        chicken.put("푸라닭", "푸라닭");

        // 피자
        Map<String, String> pizza = new HashMap<>();
        pizza.put("도미노", "도미노");
        pizza.put("파파존스", "파파존스");
        pizza.put("피자헛", "피자헛");
        pizza.put("피자스쿨", "피자스쿨");
        pizza.put("피자알볼로", "피자알볼로");

        // 족발
        Map<String, String> jokbal_Bossam = new HashMap<>();
        jokbal_Bossam.put("원할머니", "원할머니");
        jokbal_Bossam.put("장충동", "장충동");
        jokbal_Bossam.put("마왕족발", "마왕족발");
        jokbal_Bossam.put("귀한족발", "귀한족발");
        jokbal_Bossam.put("가장맛있는족발", "가장맛있는족발");

        // 일식
        Map<String, String> japanese = new HashMap<>();
        japanese.put("미소야", "미소야");
        japanese.put("백소정", "백소정");
        japanese.put("아비꼬", "아비꼬");
        japanese.put("소노야", "소노야");
        japanese.put("쿠우쿠우", "쿠우쿠우");

        // 중식
        Map<String, String> chinese = new HashMap<>();
        chinese.put("홍콩반점", "홍콩반점");
        chinese.put("교동짬뽕", "교동짬뽕");
        chinese.put("경성양꼬치", "경성양꼬치");
        chinese.put("소림마라", "소림마라");
        chinese.put("홍짜장", "홍짜장");

        // 한식
        Map<String, String> korean = new HashMap<>();
        korean.put("본죽", "본죽");
        korean.put("두찜", "두찜");
        korean.put("박가부대", "박가부대");
        korean.put("팔각도", "팔각도");
        korean.put("큰맘할매순대국", "큰맘할매순대국");

        // 양식
        Map<String, String> western = new HashMap<>();
        western.put("빕스", "빕스"); // 서비스 키를 확인하세요
        western.put("애슐리", "애슐리");
        western.put("아웃백", "아웃백");
        western.put("매드포갈릭", "매드포갈릭");
        western.put("서가앤쿡", "서가앤쿡");

        // 분식
        Map<String, String> snack = new HashMap<>();
        snack.put("엽기떡볶이", "엽기떡볶이");
        snack.put("죠스떡볶이", "죠스떡볶이");
        snack.put("이삭토스트", "이삭토스트");
        snack.put("고봉민", "고봉민");
        snack.put("두끼", "두끼");

        // 주점
        Map<String, String> pub = new HashMap<>();
        pub.put("범맥주", "범맥주");
        pub.put("인쌩맥주", "인쌩맥주");
        pub.put("한신포차", "한신포차");
        pub.put("역전할머니맥주", "역전할머니맥주");
        pub.put("경성주막", "경성주막");

        // 패스트푸드
        Map<String, String> fastFood = new HashMap<>();
        fastFood.put("맥도날드", "맥도날드");
        fastFood.put("롯데리아", "롯데리아");
        fastFood.put("버거킹", "버거킹");
        fastFood.put("KFC", "KFC");
        fastFood.put("써브웨이", "써브웨이");

        // 아시안
        Map<String, String> asian = new HashMap<>();
        asian.put("하노이별", "하노이별");
        asian.put("포메인", "포메인");
        asian.put("생어거스틴", "생어거스틴");
        asian.put("미스사이공", "미스사이공");
        asian.put("소담촌", "소담촌");

        // 디저트
        Map<String, String> dessert = new HashMap<>();
        dessert.put("베스킨라빈스", "베스킨라빈스");
        dessert.put("설빙", "설빙");
        dessert.put("왕가탕후루", "왕가탕후루");
        dessert.put("뚜레쥬르", "뚜레쥬르");
        dessert.put("파리바게트", "파리바게트");

        // 카페
        Map<String, String> cafe = new HashMap<>();
        cafe.put("스타벅스", "스타벅스");
        cafe.put("이디야", "이디야");
        cafe.put("메가커피", "메가커피");
        cafe.put("빽다방", "빽다방");
        cafe.put("투썸", "투썸");

        // 전체 데이터 맵에 추가
        storeData.put("chicken", chicken);
        storeData.put("pizza", pizza);
        storeData.put("jokbal_Bossam", jokbal_Bossam);
        storeData.put("japanese", japanese);
        storeData.put("chinese", chinese);
        storeData.put("korean", korean);
        storeData.put("western", western);
        storeData.put("snack", snack);
        storeData.put("pub", pub);
        storeData.put("fastFood", fastFood);
        storeData.put("asian", asian);
        storeData.put("dessert", dessert);
        storeData.put("cafe", cafe);
    }
    public Set<String> getKeys() {
        return storeData.keySet(); // storeData의 모든 키를 반환합니다.
    }
    
    public Collection<String> getValues(String key) {
        return storeData.get(key).values(); // 특정 키에 해당하는 값들을 반환합니다.
    }
    
    public String findValue(String storeKey) {
        for (Map<String, String> categoryMap : storeData.values()) {
            if (categoryMap.containsKey(storeKey)) {
                return categoryMap.get(storeKey);
            }
        }
        return null; // 주어진 키를 가진 값이 어떤 카테고리에도 없는 경우
    }
    
    public String findKey(String storeKey) {
        for (Map.Entry<String, Map<String, String>> entry : storeData.entrySet()) {
            if (entry.getValue().containsKey(storeKey)) {
                return entry.getKey(); // 상위 카테고리 key 반환
            }
        }
        return null; // 해당 key를 찾지 못한 경우
    }
    
}