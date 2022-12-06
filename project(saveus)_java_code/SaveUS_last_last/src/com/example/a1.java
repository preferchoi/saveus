package com.example;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
	import org.jsoup.*;
	import org.jsoup.nodes.Document;
	import org.jsoup.nodes.Element;
	import org.jsoup.select.Elements;


public class a1 {

	
	public ArrayList<String> craw(){
	 
	
	//ũ�ѷ�
		ArrayList<String> arr = new ArrayList<String>();
	 
	        // Jsoup�� �̿��ؼ� https://endic.naver.com/?sLn=kr ũ�Ѹ�
	 for (int i = 1; i < 10; i++) {
		   String url = "http://www.superbin.co.kr/new/contents/location_list.php?skey=&sval=&pg="+i;    //ũ�Ѹ��� url����
	       
	
	     
	        Document doc = null;        //Document���� �������� ��ü �ҽ��� ����ȴ�
	 
	        try {
	       	 
	            doc = Jsoup.connect(url).get();
	 
	        } catch (IOException e) {
	 
	            e.printStackTrace();
	 
	        }
	        
			/* BufferedOutputStream bs = null; */
	        
	        	
	    
	        //select�� �̿��Ͽ� ���ϴ� �±׸� �����Ѵ�. select�� ���ϴ� ���� �������� ���� �߿��� ����̴�.
	        //                               ==>���ϴ� ������ ����ִ� ����� �����´�
	        Elements element = doc.select("p.lc_txt"); 
	      
	 
	        
	 
	        //Iterator�� ����Ͽ� �ϳ��� �� ��������
	        //����ȿ��� �ʿ��Ѻκи� �����Ͽ� ������ �� �ִ�.
	        Iterator<Element> ie1 = element.select("span.lc_adress").iterator();
	 
	       // Iterator<Element> ie2 = element.select("div.txt_trans").iterator();
	 
	        while (ie1.hasNext()) {
	 
	            arr.add(ie1.next().text());//+"\t"+ie2.next().text()
	           
	       
		        
	            
				/*
				 * try { bs = new BufferedOutputStream(new
				 * FileOutputStream("C:/Users/h325j/Desktop/Output.txt")); String str
				 * =ie1.next().text(); bs.write(str.getBytes()); //Byte�����θ� ���� �� ����
				 * 
				 * } catch (Exception e) { e.getStackTrace();
				 * 
				 * }
				 */
	            
			
	            
	            
	        }
				 
				 
	 
	      
	 
	 }//for �� ������ ��
	//finally { bs.close(); }
	    return arr;
	    
	}
	
}













  









