package com.finalproject.soscanner.util;

import java.io.File;
import java.util.Iterator;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {
	private static final String filePath = "D:\\final\\file\\";

	public static String parseInsertFileInfo(MultipartHttpServletRequest mrequest) throws Exception {
		Iterator<String> iterator = mrequest.getFileNames();

		File file = new File(filePath);
		if (file.exists() == false) {
			file.mkdirs();
		}

		MultipartFile multipartFile = mrequest.getFile(iterator.next());
		if (multipartFile.isEmpty() == false) {
			String originalFileName = multipartFile.getOriginalFilename();
			String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
			String storedFileName = CommonUtils.getRandomString() + originalFileExtension;

			file = new File(filePath + storedFileName);
			multipartFile.transferTo(file);
			return storedFileName;
		}
		return null;
	}
}
