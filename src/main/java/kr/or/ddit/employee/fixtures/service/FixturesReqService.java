package kr.or.ddit.employee.fixtures.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.employee.fixtures.vo.FixturesDTLVO;
import kr.or.ddit.employee.fixtures.vo.FixturesReqVO;
import kr.or.ddit.employee.fixtures.vo.FixturesVO;

public interface FixturesReqService {
	public List<FixturesVO> retrieveFixList(String fxtrsLclas);
	
	public List<FixturesDTLVO> retrieveFixDtlList();
	
	public List<FixturesVO> retrieveFixwhereDtlList(String fixtureCode);
	
	// 발주 insert
	// insert는 실행만 하는것. -> 대부분 void로 쓰지만 아마 1개 등록했는지 2개 등록했는지로도 뽑아낼 수 있어서 int로 받을 수 있음 (불확실)
	// 그리고 parameter는 vo타입이 좋음
	// 괄호 안이 파라미터임
	// 서비스 등록했으니까 impl 등록하러 가야겠쥬?
	public int createFixOrderList(FixturesReqVO fixturesReqVO);
	
	public List<FixturesReqVO> retrieveFixOrdList();
	
}
