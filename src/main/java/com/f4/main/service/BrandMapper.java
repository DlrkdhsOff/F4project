package com.f4.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f4.main.dto.BrandDTO;
import com.f4.main.dto.WishlistDTO;


@Service 
public class BrandMapper {
   
   @Autowired
   private SqlSession sqlSession;
   
    @Autowired
    private BrandMapper brandMapper;
   
   public List<BrandDTO> listBrand(int start, int end) {
      java.util.Map<String, Integer> map = new java.util.Hashtable<>();
      map.put("start", start);
      map.put("end", end);
      return sqlSession.selectList("listBrand", map);
   }
   
   public int insertBrand(BrandDTO dto) {
         return sqlSession.insert("insertBrand", dto);
      }

   public int getCount_brand() {
      return sqlSession.selectOne("getCount_brand");
   }
   
   public int getCount_brand1(String tablename) {
         return sqlSession.selectOne("getCount_brand1", tablename);
      }
   
   public List<BrandDTO> getBrandList(int start, int end, String tablename) {
       Map<String, Object> map = new HashMap<>();
       map.put("start", start);
       map.put("end", end);
       map.put("tablename", tablename);
       return sqlSession.selectList("getBrandList", map);
   }
   
    public List<BrandDTO> listBrandOrderBySu(int start, int end) {
        java.util.Map<String, Integer> map = new java.util.Hashtable<>();
        map.put("start", start);
        map.put("end", end);
        return sqlSession.selectList("listBrandOrderBySu", map);
    }

    public List<BrandDTO> listBrandOrderByWon(int start, int end) {
        java.util.Map<String, Integer> map = new java.util.Hashtable<>();
        map.put("start", start);
        map.put("end", end);
        return sqlSession.selectList("listBrandOrderByWon", map);
    }
    
    public List<BrandDTO> listBrandOrderByWon1(int start, int end, String tablename) {
        java.util.Map<String, Object> map = new java.util.Hashtable<>();
        map.put("start", start);
        map.put("end", end);
        map.put("tablename", tablename);
        return sqlSession.selectList("listBrandOrderByWon1", map);
    }
    
    public BrandDTO getBrand(int bnum) {
       return sqlSession.selectOne("getBrand", bnum);
    }

   public int updateBrand(BrandDTO dto) {
         return sqlSession.update("updateBrand", dto);
   }
   
   public int deleteBrand(int bnum) {
         return sqlSession.delete("deleteBrand", bnum);

         } 
   
   public int addToWishlist(String id, int bnum) {
       Map<String, Object> params = new HashMap<>();
       params.put("id", id);
       params.put("bnum", bnum); 
       return sqlSession.insert("addToWishlist", params);
   }

   public int removeFromWishlist(String id, int bnum) {
       Map<String, Object> params = new HashMap<>();
       params.put("id", id);
       params.put("bnum", bnum);
       return sqlSession.delete("removeFromWishlist", params);
   }

   public List<BrandDTO> getWishlist(String id) {
       return sqlSession.selectList("getWishlist", id);
   }

   public boolean isInWishlist(String id, int bnum) {
       // BrandMapper를 통해 데이터베이스에서 해당 사용자의 찜 목록을 조회
       List<BrandDTO> wishlist = brandMapper.getWishlist(id);

       // 찜 목록에서 해당 게시물이 있는지 여부 확인
       for (BrandDTO brand : wishlist) {
           if (brand.getBnum() == bnum) {
               return true; // 찜되어 있으면 true 반환
           }
       }
       return false; // 찜되어 있지 않으면 false 반환
   }

   public WishlistDTO getWishListId(int bnum) {
      return sqlSession.selectOne("getWishListId", bnum);
   }

}