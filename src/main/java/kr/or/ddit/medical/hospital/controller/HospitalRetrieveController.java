package kr.or.ddit.medical.hospital.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.employee.vo.PaginationInfo;
import kr.or.ddit.employee.vo.SimpleCondition;
import kr.or.ddit.medical.clinc.vo.PresDocVO;
import kr.or.ddit.medical.hospital.service.HospitalService;
import kr.or.ddit.medical.hospital.vo.HospitalizationVO;
import kr.or.ddit.medical.hospital.vo.SckbdVO;
import kr.or.ddit.medical.vo.PatientVO;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/hospital")
@RequiredArgsConstructor
public class HospitalRetrieveController {

	@Inject
	private final HospitalService service;

	// 환자검색
	@GetMapping(value = "patntSearch.do", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<HospitalizationVO> patntSearch(@RequestParam("what") String patnt) {
		List<HospitalizationVO> patList = service.retrievePatientList(patnt);
		return patList;
	}
	
	// jsp 접근 메서드
	@RequestMapping("hospitalPatientView.do")
	public String hospitalPatient(
//			@RequestParam(name = "what") String patntCode,
			@RequestParam(name = "page", required = false, defaultValue = "1") long currentPage,
			@ModelAttribute("simpleCondition") SimpleCondition simpleCondition, Model model) {

//		PaginationInfo<HospitalizationVO> paging = new PaginationInfo<>(5,5);
		PaginationInfo<HospitalizationVO> paging = new PaginationInfo<>();
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simpleCondition);
		
		List<HospitalizationVO> hospitalPatient = service.retrieveHospitalPatientPaging(paging);
		paging.setHospitalPatient(hospitalPatient);
		
		model.addAttribute("hospitalPatient", hospitalPatient);
		model.addAttribute("paging", paging);
		return "hospital/hospitalization";
	}

	// 입원환자 상세조회
	@GetMapping(value = "hospitalPatientDetail.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> inPatntDetail(Model model, @RequestParam("who") String patntCode) {
		List<HospitalizationVO> patnt = service.retrieveInPatnt(patntCode);
		model.addAttribute("patnt", patnt);

		return patnt;
	}

	// 간호부 병동-입원환자리스트 조회
	@GetMapping(value ="hospitalPatientList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String hospitalPatientList(@RequestParam("code") String code,Model model) {
		List<HospitalizationVO> hospitalPatient = service.retrieveHospitalPatientList(code);
		model.addAttribute("hospitalPatient", hospitalPatient);
		return "hospital/hospitalization";
	}

	// 간호부 병동-환자관리 ui출력용
	@GetMapping(value = "hospitalInPatientList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	public String hospitalPatientDetail() {
		return "nurse/nurseHospitalization";
	}

	// 병동 현황, 입원대기환자, 입원중 환자 전체 조회 ui 출력용
	@GetMapping("hospitalList.do")
	public String hospitaList() {
		return "hospital/ward";
	}

	// 입원중인 환자 전체 list
	@GetMapping(value = "ingPatntList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> ingPatnt(@RequestParam("code") String code) {
		List<HospitalizationVO> ingPatnt = service.retrieveHospitalPatientList(code);
		return ingPatnt;
	}
	// 입원대기중인 환자 전체 list-datalist출력용
	@GetMapping(value = "waitDataList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> waitDataList(@RequestParam("code") String code) {
		List<HospitalizationVO> waitDataList = service.retrieveHospitalWaitList(code);
		return waitDataList;
	}

	// 병동 현황 list 담기
	@GetMapping(value = "hospitalSearch.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SckbdVO> hospitalSearch(@RequestParam("wardSelect") String sckbdRo) {
		List<SckbdVO> bedList = service.retrieveSckbdList(sckbdRo);
		return bedList;
	}

	// 환자 검색조회(입원중, 입원대기)
	@GetMapping(value = "hospitalPatntSearch.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PatientVO> waitPatntSearch(@RequestParam("word") String word, @RequestParam("code") String code) {
		List<PatientVO> waitPatnt = service.retrieveHospitalList(word, code);

		return waitPatnt;
	}

	// 병실 , 병실에있는 환자조회
	@GetMapping(value = "hospitalPatntDetail.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> wardPatnt(
			@RequestParam("sckbdRo") String sckbdRo, @RequestParam("sckbdNo") int sckbdNo) {
		List<HospitalizationVO> wardPatnt = service.retrievePatntDetail(sckbdRo, sckbdNo);

		return wardPatnt;
	}

	@GetMapping(value = "hospitalWardDetail.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<HospitalizationVO> wardSearch(@RequestParam("sckbdRo") String sckbdRo) {
		List<HospitalizationVO> ward = service.retrieveWardDetail(sckbdRo);

		return ward;

	}

	// 처방내역 조회
	@GetMapping(value = "presList.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<PresDocVO> presList(@RequestParam("pres") String presCode) {
		List<PresDocVO> pres = service.retrievePresList(presCode);
		return pres;

	}

	// 침상 인원 현황 조회
	@GetMapping(value = "selectSckbdCount.do", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<SckbdVO> selectSckbdCount() {
		List<SckbdVO> sck = service.retrieveSckbdCount();
		return sck;
	}

}
