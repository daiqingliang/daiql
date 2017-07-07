package com.cu.test;

import org.apache.log4j.Logger;

public class Logtest {
	private static Logger log = Logger.getLogger(Logger.class);
	public void add(){  
        /** 
         * 此外可以指定用哪个日志，myTest1或者myTest2 
         * 此外还存在一个小问题，就是即使我指定了输出到哪个日志标签， 
         * 另外一个标签也会执行，不会没有输出内容 
         */  
        for(int i=0;i<10;i++){  
            log.debug("DDDDDDDDDDDDD");  
            log.info("IIIIIIIIIIIIIIIIII");  
            log.warn("WWWWWWWWWWWWWWWWWWWWWW");  
            log.error("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");  
        }  
    }  
      
    public static void main(String[] args){  
    	Logtest userdao = new Logtest();  
        userdao.add();  
    } 
}
