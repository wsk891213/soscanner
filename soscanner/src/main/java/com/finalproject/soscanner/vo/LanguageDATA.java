package com.finalproject.soscanner.vo;

import java.util.HashMap;

public class LanguageDATA {
	private HashMap<String , String> eng_map = new HashMap<>();
	private HashMap<String , String> ch_map = new HashMap<>();
	
	public LanguageDATA() {
		eng_map.put("종로구", "Jongno");            
	    eng_map.put("성동구", "Seongdong");         
	    eng_map.put("동작구", "Dongjak");           
	    eng_map.put("용산구", "Yongsan");           
	    eng_map.put("강동구", "Gangdong");          
	    eng_map.put("도봉구", "Dobong");             
	    eng_map.put("금천구", "Geumcheon");          
	    eng_map.put("은평구", "Eunpyeong");          
	    eng_map.put("중랑구", "Jungnang");         
	    eng_map.put("강남구", "Gangnam");          
	    eng_map.put("마포구", "Mapo");             
	    eng_map.put("광진구", "Gwangjin");         
	    eng_map.put("서초구", "Seocho");           
	    eng_map.put("구로구", "Guro");             
	    eng_map.put("송파구", "Songpa");          
	    eng_map.put("양천구", "Yangcheon");       
	    eng_map.put("노원구", "Nowon");            
	    eng_map.put("성북구", "Seongbuk");         
	    eng_map.put("강서구", "Gangseo");          
	    eng_map.put("관악구", "Gwanak");           
	    eng_map.put("강북구", "Gangbuk");         
	    eng_map.put("중구", "Jung-gu");           
	    eng_map.put("영등포구", "Yeongdeungpo");     
	    eng_map.put("서대문구", "Seodaemun");      
		eng_map.put("동대문구", "Dongdaemun");  
		
		ch_map.put("종로구", "钟路区");          
		ch_map.put("성동구", "城东区");          
		ch_map.put("동작구", "铜雀区");          
		ch_map.put("용산구", "龙山区");          
		ch_map.put("강동구", "江东区");          
		ch_map.put("도봉구", "道峰区");         
		ch_map.put("금천구", "衿川区");         
		ch_map.put("은평구", "恩平区");         
		ch_map.put("중랑구", "中浪区");                   
		ch_map.put("강남구", "江南区");           
		ch_map.put("마포구", "麻浦区");           
		ch_map.put("광진구", "广津区");           
		ch_map.put("서초구", "瑞草区");           
		ch_map.put("구로구", "九老区");           
		ch_map.put("송파구", "松坡区");           
		ch_map.put("양천구", "阳川区");            
		ch_map.put("노원구", "芦原区");           
		ch_map.put("성북구", "城北区");           
		ch_map.put("강서구", "江西区");           
		ch_map.put("관악구", "冠岳区");           
		ch_map.put("강북구", "江北区");           
		ch_map.put("중구", "中区");              
		ch_map.put("영등포구", "永登浦区");        
		ch_map.put("서대문구", "西大门区 ");        
		ch_map.put("동대문구", "东大门区");  
		
	}
	
	
	public HashMap<String, String> getEng_map() {
		return eng_map;
	}
	public HashMap<String, String> getCh_map() {
		return ch_map;
	}
	
	
}
