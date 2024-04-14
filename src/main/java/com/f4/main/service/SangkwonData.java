package com.f4.main.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class SangkwonData {

	
	public String year(String StoreName) {
		String yr = null;
		String name = StoreName;
		if (name.equals("네네치킨")) {
        	yr = "2021";
        } else if (name.equals("귀한족발")) {
        	yr = "2021";
        } else if (name.equals("맥도날드")) {
        	yr = "2020";
        } else {
        	yr = "2022";
        }
		
		return yr;
	}
	
	public String year1(String StoreName) {
		String yr = null;
		String name = StoreName;
		if (name.equals("BBQ")) {
        	yr = "2021";
        } else if (name.equals("파파존스")) {
        	yr = "2019";
        } else if (name.equals("하노이별")) {
        	yr = "2019";
        } else if (name.equals("큰맘할매순대국")) {
        	yr = "2021";
        } else if (name.equals("버거킹")) {
        	yr = "2020";
        } else if (name.equals("롯데리아")) {
        	yr = "2021";
        } else if (name.equals("메가커피")) {
        	yr = "2021";
        } else if (name.equals("투썸")) {
        	yr = "2021";
        } else if (name.equals("가장맛있는족발")) {
        	yr = "2021";
        } else if (name.equals("하노이별")) {
        	yr = "2019";
        }  else {
        	yr = "2022";
        }
		
		return yr;
	}
	
	public Model XY(String StoreAddress, Model model) { // StoreAddress값에 따라 지도 시작 위치 좌표를 반환
		
		if (StoreAddress.equals("종로구")) {
			
			model.addAttribute("x", 126.990414851);
			model.addAttribute("y", 37.572583105);	
			
		} else if (StoreAddress.equals("중구")) {
			
			model.addAttribute("x", 126.986147976);
			model.addAttribute("y", 37.560954203);
			
		} else if (StoreAddress.equals("용산구")) {
			
			model.addAttribute("x", 126.964540921);
			model.addAttribute("y", 37.529521713);
			
		} else if (StoreAddress.equals("성동구")) {
			
			model.addAttribute("x", 127.029381915);
			model.addAttribute("y", 37.564428080);
			
		} else if (StoreAddress.equals("광진구")) {
			
			model.addAttribute("x", 127.070611);
			model.addAttribute("y", 37.539917);
			
		} else if (StoreAddress.equals("동대문구")) {
			
			model.addAttribute("x", 127.048188418);
			model.addAttribute("y", 37.580565478);
			
		} else if (StoreAddress.equals("중랑구")) {
			
			model.addAttribute("x", 127.092344156);
			model.addAttribute("y", 37.599285461);
			
		} else if (StoreAddress.equals("성북구")) {
			
			model.addAttribute("x", 127.01353558);
			model.addAttribute("y", 37.602655602);
			
		} else if (StoreAddress.equals("강북구")) {
			
			model.addAttribute("x", 127.02894018134934);
			model.addAttribute("y", 37.64290800853899);
			
		} else if (StoreAddress.equals("도봉구")) {
			
			model.addAttribute("x", 127.0323688);
			model.addAttribute("y", 37.66910208);
			
		} else if (StoreAddress.equals("노원구")) {
			
			model.addAttribute("x", 127.060514872);
			model.addAttribute("y", 37.654639037);
			
		} else if (StoreAddress.equals("은평구")) {
			
			model.addAttribute("x", 126.921284697);
			model.addAttribute("y", 37.619002224);
			
		} else if (StoreAddress.equals("서대문구")) {
			
			model.addAttribute("x", 126.955019);
			model.addAttribute("y", 37.575286);
			
		} else if (StoreAddress.equals("마포구")) {
			
			model.addAttribute("x", 126.945979636);
			model.addAttribute("y", 37.539617153);
			
		} else if (StoreAddress.equals("양천구")) {
			
			model.addAttribute("x", 126.865855008);
			model.addAttribute("y", 37.512377985);
			
		} else if (StoreAddress.equals("강서구")) {
			
			model.addAttribute("x", 126.822807);
			model.addAttribute("y", 37.56123543);
			
		} else if (StoreAddress.equals("구로구")) {
			
			model.addAttribute("x", 126.901596059);
			model.addAttribute("y", 37.485246712);
			
		} else if (StoreAddress.equals("금천구")) {
			
			model.addAttribute("x", 126.894249823);
			model.addAttribute("y", 37.455935008);
			
		} else if (StoreAddress.equals("영등포구")) {
			
			model.addAttribute("x", 126.896661369);
			model.addAttribute("y", 37.525765194);
			
		} else if (StoreAddress.equals("동작구")) {
			
			model.addAttribute("x", 126.977986269);
			model.addAttribute("y", 37.502848520);
			
		} else if (StoreAddress.equals("관악구")) {
			
			model.addAttribute("x", 126.929784067);
			model.addAttribute("y", 37.484171739);
			
		} else if (StoreAddress.equals("서초구")) {
			
			model.addAttribute("x", 127.007846159);
			model.addAttribute("y", 37.491900829);
			
		} else if (StoreAddress.equals("강남구")) {
			
			model.addAttribute("x", 127.028361548);
			model.addAttribute("y", 37.496486063);
			
		} else if (StoreAddress.equals("송파구")) {
			
			model.addAttribute("x", 127.112303042);
			model.addAttribute("y", 37.499607630);
			
		} else if (StoreAddress.equals("강동구")) {
			
			model.addAttribute("x", 127.132420621);
			model.addAttribute("y", 37.535879184);
			
		} else if (StoreAddress.equals("서울")) {
			
			model.addAttribute("x", 126.990414851);
			model.addAttribute("y", 37.572583105);	
			
		}
		
		
		return model;
	}
	 
	 
	public String image(String storeName) {
		 String image = null;
	 	if (storeName.equals("BBQ")) {
	 		image = "https://bbq.co.kr/images/symbols/logo-red.svg";
	 	}else if (storeName.equals("네네치킨")) {
			image ="https://nenechicken.com/17_new/images/normal_logo.png";
		}else if (storeName.equals("교촌치킨")) {
			image ="https://cdn.myfranchise.kr/images/rt/rtKa1xVDrwZDcajbPcEvqQ.png";
		}else if (storeName.equals("BHC")) {
			image ="https://cdn.myfranchise.kr/images/xr/xr2PRb8CPa7dcNnYFvKWVD.png";
		}else if (storeName.equals("푸라닭")) {
			image ="https://i.ibb.co/NtVbdt8/14642-17623-3733.jpg";
		}
		
		// 피자
		else if (storeName.equals("도미노")) {
			image ="https://cdn.myfranchise.kr/images/m4/m4HNsdsfZ8gcH1Vuz2kwXJ.png";
		}else if (storeName.equals("파파존스")) {
			image ="https://imgcdn.pji.co.kr/pc/img/220301_icon_logo.png";
		}else if (storeName.equals("피자헛")) {
			image ="https://i.ibb.co/NLyBdnK/image.jpg";
		}else if (storeName.equals("피자스쿨")) {
			image ="https://i.ibb.co/tYDSMLQ/C-Photo-View.png";
		}else if (storeName.equals("피자알볼로")) {
			image ="https://play-lh.googleusercontent.com/_X0FLYv-qK49em2D0py973TYJJBwELSRiAAM2bXqlIQytz5xc8VhZH-5FSl26CNmzw=w240-h480-rw";
		}

		// 족발
		else if (storeName.equals("원할머니")) {
			image ="https://wplyuoicjiwl13857209.cdn.ntruss.com/data2/content/image/2018/10/24/.cache/512/20181024115293.jpg";
		}else if (storeName.equals("장충동")) {
			image ="https://i.ibb.co/thhcZrC/image.png";
		}else if (storeName.equals("마왕족발")) {
			image ="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjExMTZfMTA0%2FMDAxNDc5Mjc5OTUwNjE3.j5xD-1HespPo4DDfM9-F68ZFKog6s82M1BNVlPLhQFUg.DQQlCJucfYL9hluYjHPPcS-uKkP0Kqb6Wob5d1rq5jwg.JPEG.oriental_ori%2FmosaY2faVi.jpeg&type=sc960_832";
		}else if (storeName.equals("귀한족발")) {
			image ="https://search.pstatic.net/common/?src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20230920_21%2F1695184292951PJr1E_JPEG%2F%25B1%25CD%25C7%25D1%25C1%25B7%25B9%25DF_%25B7%25CE%25B0%25ED.jpg";
		}else if (storeName.equals("가장맛있는족발")) {
			image ="https://gajok.kr/theme/basic/img/header/logo.png";
		}
		
        // 일식
        else if (storeName.equals("미소야")) {
			image ="https://cdn.imweb.me/thumbnail/20231219/fee3402c25a9d.png";
		}else if (storeName.equals("백소정")) {
			image ="https://cdn.imweb.me/upload/S2020031864c6cf090cff8/dfd7947227b3b.png";
		}else if (storeName.equals("아비꼬")) {
			image ="https://i.ibb.co/3SRc83W/1.jpg";
		}else if (storeName.equals("소노야")) {
			image ="https://i.ibb.co/yYQxhwx/Kakao-Talk-20231211-110653401-02.jpg ";
		}else if (storeName.equals("쿠우쿠우")) {
			image ="http://www.qooqoo.co.kr/eyoom/theme/company_e1/image/site_logo.png";
		}
		
        // 중식
        else if (storeName.equals("홍콩반점")) {
			image ="https://i.ibb.co/khvv6Ny/image.png";
		}else if (storeName.equals("교동짬뽕")) {
			image ="https://i.ibb.co/KG3xS43/Screenshot-20230917-131322-NAVER.jpg";
		}else if (storeName.equals("경성양꼬치")) {
			image ="https://i.ibb.co/MkyMfHw/mosa-EWP7-Ej.png";
		}else if (storeName.equals("소림마라")) {
			image ="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fdnvefa72aowie.cloudfront.net%2Fjobs%2Farticle%2F25770364%2F1660609341746%2Fjob-post-2997403886.jpeg%3Fq%3D95%26s%3D1440x1440%26t%3Dinside&type=sc960_832";
		}else if (storeName.equals("홍짜장")) {
			image ="https://i.ibb.co/ZHjQK57/1.jpg ";
		}
       
        // 한식
        else if (storeName.equals("본죽")) {
			image ="https://i.ibb.co/GpLZQgr/external-File.jpg";
		}else if (storeName.equals("두찜")) {
			image ="https://www.twozzim.com/theme/basic/image/top/ci_pc.png";
		}else if (storeName.equals("박가부대")) {
			image ="https://i.ibb.co/NWBXkMp/26734249-177181513052394-6735774018802454876-n.png";
		}else if (storeName.equals("팔각도")) {
			image ="https://8gakdo.co.kr/php/skin/images/logo2.png";
		}else if (storeName.equals("큰맘할매순대국")) {
			image ="https://i.ibb.co/rdYyS4T/5a9d426686faa7da3802a59029048f79.jpg";
		}
               
        // 양식
        else if (storeName.equals("빕스")) {
			image ="https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.net%2Fimage%2F018%2F2018%2F01%2F27%2F0004021034_002_20180127142850942.jpg&type=sc960_832";
		}else if (storeName.equals("애슐리")) {
			image ="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140722_129%2Fbesterik_14060214656812YvpE_JPEG%2F%25BE%25D6%25BD%25B6%25B8%25AE.jpg&type=sc960_832";
		}else if (storeName.equals("아웃백")) {
			image ="https://m.outback.co.kr/asset/images/common/sns.jpg";
		}else if (storeName.equals("매드포갈릭")) {
			image ="https://i.ibb.co/J3mX3sm/405197949-757287776441905-1844060706290878825-n.jpg";
		}else if (storeName.equals("서가앤쿡")) {
			image ="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140127_157%2Fninomom_1390808393253MrxRI_JPEG%2F002.jpg&type=sc960_832";
		}
        
        // 분식
        else if (storeName.equals("엽기떡볶이")) {
			image ="https://www.yupdduk.com/images/logo61.png";
		}else if (storeName.equals("죠스떡볶이")) {
			image ="https://i.ibb.co/RyQMQCZ/348477051-549816360680472-7253779585859761534-n.jpg";
		}else if (storeName.equals("이삭토스트")) {
			image ="https://search.pstatic.net/sunny/?src=https%3A%2F%2Fi.pinimg.com%2F736x%2Fa5%2F60%2Fcb%2Fa560cb55b66384339deb272b5cf5338f.jpg&type=sc960_832";
		}else if (storeName.equals("고봉민")) {
			image ="http://kobongmin.com/renewal/resources/img/common/logo.png";
		}else if (storeName.equals("두끼")) {
			image ="https://i.ibb.co/KzD9yLs/91-EBBC96-EBB69-DECA08-BEDBC-06.jpg";
		}
        
        // 주점
        else if (storeName.equals("범맥주")) {
			image ="https://xn--b02b32cj6q.kr/img/common/bi.png";
		}else if (storeName.equals("인쌩맥주")) {
			image ="https://cdn.imweb.me/thumbnail/20240110/7678df87dbf2f.png";
		}else if (storeName.equals("한신포차")) {
			image ="https://hanshinpocha.com/wp-content/themes/hanshin/images/logo.png";
		}else if (storeName.equals("역전할머니맥주")) {
			image ="https://yeokjeonfnc.com/img/main/logo_img.png";
		}else if (storeName.equals("경성주막")) {
			image ="http://ks1929.co.kr/img/common/bi.png";
		}
	 	
        // 패스트 푸드
        else if (storeName.equals("맥도날드")) {
			image ="https://yt3.googleusercontent.com/ChubnkVEaFDJNUwTGBYSZ5dWwS-cr5O2P1jtnoYWHJ32QyIun4CVOMDydlmC4VP6qSk83F5Fng=s176-c-k-c0x00ffffff-no-rj";
		}else if (storeName.equals("롯데리아")) {
			image ="https://dimg.donga.com/wps/NEWS/IMAGE/2021/11/24/110431161.2.jpg";
		}else if (storeName.equals("버거킹")) {
			image ="https://w7.pngwing.com/pngs/814/748/png-transparent-hamburger-burger-king-restaurant-fast-food-logo-burger-king-text-orange-fast-food-restaurant-thumbnail.png";
		}else if (storeName.equals("KFC")) {
			image ="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/KFC_Logo.svg/799px-KFC_Logo.svg.png";
		}else if (storeName.equals("써브웨이")) {
			image ="https://i.ibb.co/mB6kPG7/channels4-profile.jpg";
		}
        
        // 아시안
        else if (storeName.equals("하노이별")) {
			image ="https://file.albamon.com/Albamon/Recruit/Photo/C-Photo-View?FN=2022\\11\\14\\JK_CO_dfkyzf22111418413343.jpg";
		}else if (storeName.equals("포메인")) {
			image ="https://www.gilnew.com/gn_home/wp-content/uploads/2015/08/%ED%8F%AC%EB%A9%94%EC%9D%B8.jpg";
		}else if (storeName.equals("생어거스틴")) {
			image ="http://www.welfareclub.net/data/img/logo.png";
		}else if (storeName.equals("미스사이공")) {
			image ="https://i.ibb.co/TwhxKt5/301812744-736608307762355-5763425625955899038-n.jpg";
		}else if (storeName.equals("소담촌")) {
			image ="http://www.sodamchon.com/img/main/logo.png";
		}
        
        // 디저트
        else if (storeName.equals("베스킨라빈스")) {
			image ="https://img.hankyung.com/photo/201809/01.17872120.1.jpg";
		}else if (storeName.equals("설빙")) {
			image ="https://i.ibb.co/s6BFcbb/pc.jpg ";
		}else if (storeName.equals("왕가탕후루")) {
			image ="https://i.ibb.co/Y3RtSmN/optimized.webp";
		}else if (storeName.equals("뚜레쥬르")) {
			image ="https://i.ibb.co/6bxySFg/image.jpg";
		}else if (storeName.equals("파리바게트")) {
			image ="https://cdn.myfranchise.kr/images/dj/djdGt7oqWk25HkDrBv6QZK_64";
		}
        
        // 카페
        else if (storeName.equals("스타벅스")) {
			image ="https://cdn.myfranchise.kr/images/vi/vixTk2ZtrXCGnhUQLtGqyU.png";
		}else if (storeName.equals("이디야")) {
			image ="https://cdn.myfranchise.kr/uploads/vR/vREGfGV1urCLFRnLXLa5NS?w=180&h=180&f=jpg";
		}else if (storeName.equals("메가커피")) {
			image ="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FvEsVe%2FbtqBMODlEFv%2FVBZviSXKWPUWmmPnTuUfm0%2Fimg.jpg";
		}else if (storeName.equals("빽다방")) {
			image ="https://paikdabang.com/wp-content/themes/paikdabang/assets/images/logo.png";
		}else if (storeName.equals("투썸")) {
			image ="https://mblogthumb-phinf.pstatic.net/20160606_73/ppanppane_1465209281096IMW3u_PNG/%C5%F5%BD%E6_%C7%C3%B7%B9%C0%CC%BD%BA%B7%CE%B0%ED_%282%29.png?type=w800";
		}
		return image;
	}
	
    public String getCategories(String searchString) {
        switch (searchString) {
            case "치킨":
                return "chicken";
            case "피자":
                return "pizza";
            case "패스트푸드":          	
            	return "fastFood";
            case "족발":
            case "보쌈":
            	return "jokbal_Bossam";
            case "일식": 
            	return "japanese";
            case "중식":  
            	return "chinese";
            case "한식":
            	return "korean";
            case "양식":  
            case "뷔페":  
            case "페밀리 레스토랑":  
            	return "western";
            case "분식":  
            	return "snack";
            case "주점":  
            case "호프":  
            case "펍":  
            case "포장마차":  
            	return "pub";
            case "아시안":  
            case "아시아":  
            	return "asian";
            case "디저트": 
            case "제과":  
            	return "dessert";
            case "카페":  
            case "커피":  
            case "음료":
            	return "cafe";         
         
            default:
                return null;
        }
    }
    
    
    public String getCategorie(String data) {
        switch (data) {
            case "chicken":
                return "치킨집의 ";
            case "pizza":
                return "피자집의 ";
            case "fastFood":          	
            	return "패스트 푸드식당의 ";
            case "jokbal_Bossam":
            	return "족발/보쌈집의 ";
            case "japanese": 
            	return "일식당의 ";
            case "chinese":  
            	return "중식당의 ";
            case "korean":
            	return "한식당의 ";
            case "western": 
            	return "양식당 ";
            case "snack":  
            	return "분식당의 ";
            case "pub":   
            	return "주점의 ";
            case "asian":  
            	return "아시안 식당의 ";
            case "dessert": 
            	return "디저트 ";
            case "cafe":  
            	return "카페의 ";         
         
            default:
                return null;
        }
    }
    
    public String getDistrict(String searchString) {
    	switch (searchString) {
    	case "서울시" :
    	case "서울":
    	case "서":
    		return "서울";
    	case "중구" :
    		return "중구";
    	case "종로" :
    	case "종로구":
    		return "종로구";
    	case "용산" :
    	case "용산구":
    		return "용산구";
    	case "성동구" :
    	case "성동":
    		return "성동구";
    	case "광진" :
    	case "광진구":
    		return "광진구";
    	case "동대문" :
    	case "동대문구":
    		return "동대문구";
    	case "중랑" :
    	case "중랑구":
    		return "중랑구";
		case "성북" :
    	case "성북구":
    		return "성북구";
    	case "강북" :
    	case "강북구":
    		return "강북구";
    	case "도봉" :
    	case "도봉구":
    		return "도봉구";
    	case "노원" :
    	case "노원구":
    		return "노원구";
    	case "은평" :
    	case "은평구":
    		return "은평구";
    	case "서대문" :
    	case "서대문구":
    		return "서대문구";
    	case "마포" :
    	case "마포구":
    		return "마포구";
    	case "양천" :
    	case "양천구":
    		return "양천구";
    	case "강서" :
    	case "강서구":
    		return "강서구";
    	case "구로" :
    	case "구로구":
    		return "구로구";
    	case "금천" :
    	case "금천구":
    		return "금천구";
    	case "영등포" :
    	case "영등포구":
    		return "영등포구";
    	case "동작" :
    	case "동작구":
    		return "동작구";
    	case "관악" :
    	case "관악구":
    		return "관악구";
    	case "서초" :
    	case "서초구":
    		return "서초구";
		case "강남" :
    	case "강남구":
    		return "강남구";
    	case "송파" :
    	case "송파구":
    		return "송파구";
    	case "강동구" :
    	case "강동":
    		return "강동구";
    	case "강":
        	return "강";
    	case "성":
        	return "성";
    	default:
            return null;
    	}
    }
    
    public String getStoreName(String searchString) {
    	switch (searchString) {
    	case "비비큐" :
    	case "BBQ" :
    	case "bbq" :
    		return "BBQ";
    	case "네네" :
    	case "네네치킨" :
    	case "네네 치킨" :
    		return "네네치킨";
    	case "교촌" :
    	case "교촌치킨":
    	case "교촌 치킨":
    		return "교촌치킨";
    	case "bhc" :
    	case "BHC" :
    	case "비에이치씨":
    	case "비에이치시":
    	case "비애이치시":
    		return "BHC";
    	case "푸라닭":
    		return "푸라닭";
    	case "파파" :
    	case "파파존스" :
    	case "papajohns":
    		return "파파존스";
    	case "도미노" :
    	case "도미노피자" :
    	case "domino":
    		return "도미노";
    	case "pizzahut":
    	case "피자헛":
    		return "피자헛";
    	case "pizzaSchool":
    	case "피자스쿨":
    		return "피자스쿨";
    	case "피자알볼로":
    		return "피자알볼로";
    	case "원할머니보쌈":
    	case "원할머니족발":
    	case "원할머니":
    		return "원할머니";
    	case "장충동족발" :
    	case "장충동왕족발":
    	case "장충동왕족발보쌈":
    	case "장충동":
    		return "장충동";
    	case "마왕 족발" :
    	case "마왕":
    		return "마왕족발";
    	case "귀한" :
    	case "귀한족발":
    	case "귀한 족발":
    		return "귀한족발";
    	case "가족" :
    	case "가장맛있는족발" :
    		return "가장맛있는족발";
    	case "쿠우" :
    	case "쿠우쿠우" :
    		return "쿠우쿠우";
    	case "미소야" :
    		return "미소야";
    	case "백소정" :
    		return "백소정";
    	case "아비꼬" :
    		return "아비꼬";
    	case "소노야" :
    		return "소노야";
    	case "교동" :
    	case "교동짬뽕" :
    		return "교동짬뽕";
    	case "홍콩" :
    	case "홍콩반점" :
    		return "홍콩반점";
    	case "경성" :
    	case "양꼬치":
    	case "경성양꼬치":
    		return "경성양꼬치";
    	case "마라" :
    	case "소림":
    	case "소림마라":
    		return "소림마라";
    	case "홍짜장":
    		return "홍짜장";
    	case "순대국" :
    	case "할매순대국":
    	case "큰맘":
    	case "큰맘할매순대국":
    		return "큰맘할매순대국";
    	case "본죽":
    		return "본죽";
    	case "두찜":
    		return "두찜";
    	case "박가":
    	case "박가부대":
    		return "박가부대";
    	case "팔각도":
    		return "팔각도";
    	case "vips" :
    	case "빕스" :
    		return "빕스";
    	case "outback" :
    	case "아웃백" :
    		return "아웃백";
    	case "애슐리" :
    	case "애슐리퀸즈" :
    		return "애슐리";
    	case "서가앤쿡" :
    	case "서가엔쿡" :
    	case "서가" :
    		return "서개앤쿡";
    	case "매드포" :
    	case "매드포갈릭" :
    	case "메드포" :
    	case "메드포갈릭" :
    		return "매드포갈릭";
    	case "엽떡" :
    	case "동대문":
    	case "동대문엽기떡볶이":
    	case "엽기떡볶이":
    		return "엽기떡볶이";
    	case "죠스":
    	case "죠스떡볶이":
    		return "죠스떡볶이";
    	case "이삭":
    	case "이삭토스트":
    	case "토스트":
    		return "이삭토스트";
    	case "고봉민":
    	case "고봉민김밥":
    		return "고봉민";
    	case "두끼":
    		return "두끼";
    	case "케이에프씨" :
    	case "케이에프시":
    	case "KFC":
    		return "KFC";
		case "서브웨이" :
		case "써브웨이" :
    		return "써브웨이";
		case "맥날" :
		case "맥도날드" :
    		return "맥도날드";
		case "롯데리아" :
		case "롯데" :
    		return "롯데리아";
		case "범맥주" :
		case "범" :
    		return "범맥주";
		case "인생맥주" :
		case "인생" :
		case "인쌩맥주" :
		case "인썡" :
    		return "인쌩맥주";
		case "한신" :
		case "한신포차" :
    		return "한신포차";
		case "역전" :
		case "할맥" :
		case "역전할머니" :
		case "역전할머니맥주" :
    		return "역전할머니맥주";
		case "경성주막" :
    		return "경성주막";
    	case "하노이별" :
    		return "하노이별";
    	case "생어거스틴" :
    	case "어거스틴" :
    		return "생어거스틴";
    	case "미스사이공":
        	return "미스사이공";
    	case "포메인":
        	return "포메인";
    	case "소담촌":
        	return "소담촌";
    	case "베라":
    	case "베스킨라빈스":
        	return "베스킨라빈스";
    	case "왕가":
    	case "탕후루":
    	case "왕가탕후루":
        	return "왕가탕후루";
    	case "뚜레주르":
    	case "뚜레쥬르":
        	return "뚜레쥬르";
    	case "파리바게뜨":
    	case "파리바게트":
    	case "파리":
        	return "파리바게트";
    	case "설빙":
        	return "설빙";
    	case "스벅":
    	case "스타":
    	case "스타벅스":
        	return "스타벅스";
    	case "투썸 플레이스":
    	case "투썸플레이스":
    	case "투썸":
        	return "투썸";
    	case "메가커피":
    	case "메가MGC커피":
        	return "메가커피";
    	case "빽다방":
        	return "빽다방";
    	case "이디야":
        	return "이디야";
    	default:
            return null;
    	}
    }
    
	public String[] getArea() {
		   String[] seouladdress = {
				    "서울시", "서울", "중구", "종로", "종로구", "용산", "용산구", "성동구", "성동", "광진", "광진구", 
				    "동대문", "동대문구", "중랑", "중랑구", "성북", "성북구", "강북", "강북구", "도봉", "도봉구", "노원", "노원구", 
				    "은평", "은평구", "서대문", "서대문구", "마포", "마포구", "양천", "양천구", "강서", "강서구", "구로", "구로구", 
				    "금천", "금천구", "영등포", "영등포구", "동작", "동작구", "관악", "관악구", "서초", "서초구", "강남", "강남구", 
				    "송파", "송파구", "강동구", "강동"
				};
		   return seouladdress;
		}
		
		public String[] getCategories() {
			String[] categories = {
				    "치킨", "피자", "패스트푸드", "족발", "보쌈", "일식", "중식", 
				    "한식", "양식", "뷔페", "페밀리 레스토랑", "분식", "주점", 
				    "호프", "펍", "포장마차", "아시안", "아시아", "디저트", 
				    "제과", "카페", "커피", "음료"
				};
			   return categories;
			}
		
		
		public String[] getStoreNames() {
			String[] storeNames = {
				    "비비큐", "BBQ", "bbq", "네네", "네네치킨", "교촌", "교촌치킨", "bhc", "BHC", "비에이치씨", "비에이치시", 
				    "비애이치시", "푸라닭", "파파", "파파존스", "papajohns", "도미노", "도미노피자", "domino", "pizzahut", 
				    "피자헛", "pizzaSchool", "피자스쿨", "피자알볼로", "원할머니보쌈", "원할머니족발", "원할머니", "장충동족발", 
				    "장충동왕족발", "장충동왕족발보쌈", "장충동", "마왕 족발", "마왕", "귀한", "귀한족발", "가족", "가장맛있는족발", 
				    "쿠우", "쿠우쿠우", "미소야", "백소정", "아비꼬", "소노야", "교동", "교동짬뽕", "홍콩", "홍콩반점", "경성", 
				    "양꼬치", "경성양꼬치", "마라", "소림", "소림마라", "홍짜장", "순대국", "할매순대국", "큰맘", "큰맘할매순대국", 
				    "본죽", "두찜", "박가", "박가부대", "팔각도", "vips", "빕스", "outback", "아웃백", "애슐리", "애슐리퀸즈", 
				    "서가앤쿡", "서가엔쿡", "서가", "매드포", "매드포갈릭", "메드포", "메드포갈릭", "엽떡", "동대문", "동대문엽기떡볶이", 
				    "엽기떡볶이", "죠스", "죠스떡볶이", "이삭", "이삭토스트", "토스트", "고봉민", "고봉민김밥", "두끼", "케이에프씨", 
				    "케이에프시", "KFC", "서브웨이", "써브웨이", "맥날", "맥도날드", "롯데리아", "롯데", "범맥주", "범", "인생맥주", 
				    "인생", "인쌩맥주", "인썡", "한신", "한신포차", "역전", "할맥", "역전할머니", "역전할머니맥주", "경성주막", 
				    "하노이별", "생어거스틴", "어거스틴", "미스사이공", "포메인", "소담촌", "베라", "베스킨라빈스", "왕가", "탕후루", 
				    "왕가탕후루", "뚜레주르", "뚜레쥬르", "파리바게뜨", "파리바게트", "파리", "설빙", "스벅", "스타", "스타벅스", 
				    "투썸 플레이스", "투썸플레이스", "투썸", "메가커피", "메가MGC커피", "빽다방", "이디야"
				};
			   return storeNames;
			}
}
