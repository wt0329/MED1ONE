package kr.or.ddit.File.controller;

import java.io.IOException;
import java.util.Collections;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.File.service.AtchFileService;
import kr.or.ddit.File.vo.AtchFileDtlVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class AtchFileDeleteController {
	
	private final AtchFileService service;
	
	@Value("#{appInfo.atchPath}")
	private Resource atchPath;
	
	@PostMapping("/board/fileDelete.do")
	@ResponseBody
	public Map<String, Object> fileDelete(AtchFileDtlVO condition) throws IOException {
		 boolean success = service.removeAtchFileDetail(condition, atchPath);
		 return Collections.singletonMap("success", success);
	}
}


