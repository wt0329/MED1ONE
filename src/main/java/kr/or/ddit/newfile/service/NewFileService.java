package kr.or.ddit.newfile.service;

import java.util.List;

import kr.or.ddit.newfile.vo.NewFileVO;

public interface NewFileService {

	public List<NewFileVO> retrieveNewFile(String fileTitle);
	public List<NewFileVO> retrievNewFileTitle(String FileTitle);
	public List<NewFileVO> retrievNewFileMain();
	public List<NewFileVO> retrieveNewFileList();
	public boolean createNewFile(NewFileVO fileVO);

	public boolean removeFile(String fileTitle);
	public boolean modifyFile(NewFileVO newFile);
	
}
