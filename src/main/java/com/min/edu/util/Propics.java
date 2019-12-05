package com.min.edu.util;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class Propics {

	public static String attach_path="D:\\workspace_TeamProject\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\LoveDog\\uploadfiles";
	
	public static String saveFile(MultipartFile file) {
		String saveName = file.getOriginalFilename();
		
		File path = new File(attach_path, saveName);
		
		try {
			file.transferTo(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
	
		return saveName;
	
}
}
