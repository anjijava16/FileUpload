package com.iwinner.web.helper;

import java.io.File;

public class AZUtils {

	public static String getName(String name) {

		String finalName = "";
		int startIndex = name.lastIndexOf(AZHelperConstants.DOC_SYMBOL);
		finalName = name.substring(startIndex, name.length());
		return finalName;
	}
	public static Integer fileSize(String fileName){
		File file=new File(fileName);
		Long fileSize_=file.length();
		Integer fileSize=fileSize_.intValue();
		return fileSize;
	}
	public static Integer commentFileSize(String name){
		
		Integer fileSize=name.length();
		
		return fileSize;
	}
	public static void main(String[] args) {
		
		//System.out.println(commentFileSize("ajdkfnjdajfiuewwwwwwwwwwwwwwwwwwwwwwwwwdfjv adfkjkad;l;a"));
		System.out.println(fileSize("D:/anji/Error2.PNG"));
	}
}
