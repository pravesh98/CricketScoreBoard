package com.example.test;

public class XMLParsing {
	
	public boolean verifyXMlData()
	{
		return true;
	}
	
	public String getJSONFromXML()
	{
		return "";
	}
	public void buildSimpleJson()
	{
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("first","pravesh kumar");
		jsonObject.put("middle","varun Kumar");
		jsonObject.put("last","shukla");
		System.out.println(jsonObject);
		JSONArray jsonArray=new JSONArray();
		jsonArray.add("9892682051");
		jsonArray.add("91636745");
		jsonObject.put("mobile",jsonArray);
		System.out.println(jsonObject);
	}
	
	public void jsonSampleParsing()
	{
		JSONParser jsonParser=new JSONParser();
		
		try {
			Object object=jsonParser.parse(new File("WebContent\\WEB-INF\\data\\sam.txt").getAbsolutePath());
			JSONObject jsonObject=(JSONObject) object;
			
			JSONObject innings=(JSONObject) jsonObject.get("innings");
			JSONArray inning=(JSONArray) innings.get("inning");
			for(int i=0;i<inning.size();i++)
			{
				JSONObject deliveries=(JSONObject) inning.get(i);
				System.out.println("Deliveries json object "+deliveries.toString());
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
