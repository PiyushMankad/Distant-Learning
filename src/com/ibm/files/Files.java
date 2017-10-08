package com.ibm.files;




public  class Files {
	
		public static String extension(String s1){

			int i;
			String ret[]=new String[10];
			String array[]=new String[10];
			  array = s1.split("\\.");
		
			
				 for(i=0; i < array.length; i++){
	              ret[i] = array[i];
	         }
			  
				  
				  
				  
				 
				return ret[7];
			
			  
			  
			 
			
		
			
			
		}
	}


